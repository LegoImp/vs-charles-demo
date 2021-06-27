package;

import lime.utils.Assets;

using StringTools;

class CoolUtil
{
	public static var difficultyArray:Array<String> = ['EASY', "NORMAL", "HARD"];

	public static function difficultyString():String
	{
		return difficultyArray[PlayState.storyDifficulty];
	}

	public static function coolTextFile(path:String):Array<String>
	{
		var daList:Array<String> = Assets.getText(path).trim().split('\n');

		for (i in 0...daList.length)
		{
			daList[i] = daList[i].trim();
		}

		return daList;
	}
	public static function coolDialogue(path:String):Array<String>
		{
			var daList1:Array<String> = new EReg("\r", "g").replace(Assets.getText(path), "").trim().split('---SECTION START---\n');
	
			var daList:Array<Array<String>> = [];
			
			for (fuckyoumate in daList1)
			{
				//if (fuckyoumate != "")
				if (fuckyoumate.contains("\n---SECTION END---"))
				{
					var someshit:Array<String> = new EReg("\r", "g").replace(fuckyoumate, "").trim().split('\n---SECTION END---');
					//trace("fuck you mate: " + fuckyoumate);
					//trace("some shit: " + someshit);
					if (someshit.length > 0)
					{
						daList.push(someshit[0].trim().split('\n'));
					}
				}
			}
			var listToUse:Array<String> = [];
			return listToUse;
		}
	
	public static function coolStringFile(path:String):Array<String>
		{
			var daList:Array<String> = path.trim().split('\n');
	
			for (i in 0...daList.length)
			{
				daList[i] = daList[i].trim();
			}
	
			return daList;
		}

	public static function numberArray(max:Int, ?min = 0):Array<Int>
	{
		var dumbArray:Array<Int> = [];
		for (i in min...max)
		{
			dumbArray.push(i);
		}
		return dumbArray;
	}
}

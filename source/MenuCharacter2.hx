package;

import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;

class MenuCharacter2 extends FlxSprite
{
	public var character:String;

	public function new(x:Float, character:String = 'bf')
	{
		super(x);
		character = 'lego';
		this.character = character;

		antialiasing = true;

		frames = Paths.getSparrowAtlas('LegoImp_idle_Black_Lines');

		animation.addByPrefix('lego', "LegoImp idle Black Lines", 14);

		animation.play(character);
		updateHitbox();
	}
}

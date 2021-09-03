package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.ui.FlxButton;
import flixel.util.FlxTimer;

class LoadingState extends FlxState
{
	override public function create()
	{
		super.create();
		// HAXE NOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO #2
		new FlxTimer().start(5, function(tmr:FlxTimer)
		{
			new FlxButton(0, 0, 'Click me to Start!', function()
			{
				FlxG.switchState(new MainMenuState());
			});
		});
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
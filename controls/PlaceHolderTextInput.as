package frontend.components.menuList.editors.custom
{
	import feathers.controls.TextInput;
	import starling.events.Event;

	/**
	 * Copyright 2016. All rights reserved.
	 *
	 * @author Sebastian Erb
	 *
	 */
	public class PlaceHolderTextInput extends TextInput
	{

		/**
		 *
		 * @param defaultTitle
		 */
		public function PlaceHolderTextInput()
		{
			super();
		}

		private var _placeholder:String;

		/**
		 *
		 * @param value
		 */
		public function set placeholder(value:String):void
		{
			_placeholder = value;
		}

		override public function get text():String
		{
			return _text == _placeholder ? "" : _text;
		}

		override protected function textEditor_focusInHandler(event:Event):void
		{
			super.textEditor_focusInHandler(event);

			if(_text == _placeholder)
			{
				this.text = "";
			}
		}

		override protected function textEditor_focusOutHandler(event:Event):void
		{
			super.textEditor_focusOutHandler(event);

			if(_text == "")
			{
				this.text = _placeholder;
			}
		}
	}
}

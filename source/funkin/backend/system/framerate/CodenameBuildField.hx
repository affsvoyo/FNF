package funkin.backend.system.framerate;

import funkin.backend.system.macros.GitCommitMacro;
import openfl.text.TextField;

class CodenameBuildField extends TextField {
	public function new() {
		super();
		defaultTextFormat = Framerate.textFormat;
		autoSize = LEFT;
		multiline = wordWrap = false;
		reload();
	}

	public function reload() {
		#if COMPILE_EXPERIMENTAL
		text = 'D&B Unfair Edition';
		#else
		text = 'D&B Unfair Edition';
		#end

		#if (debug || COMPILE_EXPERIMENTAL)
		text += 'D&B Unfair Edition';
		#end
	}
}

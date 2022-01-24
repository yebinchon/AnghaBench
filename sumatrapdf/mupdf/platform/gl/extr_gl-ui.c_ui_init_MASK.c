#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {float fontsize; float baseline; float lineheight; float gridsize; int /*<<< orphan*/  overlay_list; } ;

/* Variables and functions */
 float DEFAULT_UI_BASELINE ; 
 float DEFAULT_UI_FONTSIZE ; 
 float DEFAULT_UI_GRIDSIZE ; 
 float DEFAULT_UI_LINEHEIGHT ; 
 int /*<<< orphan*/  GLUT_ACTION_GLUTMAINLOOP_RETURNS ; 
 int /*<<< orphan*/  GLUT_ACTION_ON_WINDOW_CLOSE ; 
 int GLUT_DOUBLE ; 
 int GLUT_RGBA ; 
 int /*<<< orphan*/  GLUT_SCREEN_HEIGHT ; 
 int /*<<< orphan*/  GLUT_SCREEN_HEIGHT_MM ; 
 int /*<<< orphan*/  GLUT_SCREEN_WIDTH ; 
 int /*<<< orphan*/  GLUT_SCREEN_WIDTH_MM ; 
 int /*<<< orphan*/  GL_MAX_TEXTURE_SIZE ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  has_ARB_texture_non_power_of_two ; 
 int /*<<< orphan*/  max_texture_size ; 
 int /*<<< orphan*/  on_display ; 
 int /*<<< orphan*/  on_error ; 
 int /*<<< orphan*/  on_keyboard ; 
 int /*<<< orphan*/  on_motion ; 
 int /*<<< orphan*/  on_mouse ; 
 int /*<<< orphan*/  on_passive_motion ; 
 int /*<<< orphan*/  on_reshape ; 
 int /*<<< orphan*/  on_special ; 
 int /*<<< orphan*/  on_timer ; 
 int /*<<< orphan*/  on_warning ; 
 int /*<<< orphan*/  on_wheel ; 
 TYPE_1__ ui ; 
 int /*<<< orphan*/  FUNC21 () ; 

void FUNC22(int w, int h, const char *title)
{
	float ui_scale;

#ifdef FREEGLUT
	glutSetOption(GLUT_ACTION_ON_WINDOW_CLOSE, GLUT_ACTION_GLUTMAINLOOP_RETURNS);
#endif

	FUNC8(on_error);
	FUNC9(on_warning);
	FUNC7(GLUT_RGBA | GLUT_DOUBLE);
	FUNC10(w, h);
	FUNC3(title);

	FUNC20(500, on_timer, 0);
	FUNC17(on_reshape);
	FUNC4(on_display);
#if defined(FREEGLUT) && (GLUT_API_VERSION >= 6)
	glutKeyboardExtFunc(on_keyboard);
#else
	FUNC12(on_keyboard);
#endif
	FUNC19(on_special);
	FUNC14(on_mouse);
	FUNC13(on_motion);
	FUNC16(on_passive_motion);
	FUNC15(on_wheel);

	has_ARB_texture_non_power_of_two = FUNC5("GL_ARB_texture_non_power_of_two");
	if (!has_ARB_texture_non_power_of_two)
		FUNC0(ctx, "OpenGL implementation does not support non-power of two texture sizes");

	FUNC2(GL_MAX_TEXTURE_SIZE, &max_texture_size);

	ui_scale = 1;
	{
		int wmm = FUNC6(GLUT_SCREEN_WIDTH_MM);
		int wpx = FUNC6(GLUT_SCREEN_WIDTH);
		int hmm = FUNC6(GLUT_SCREEN_HEIGHT_MM);
		int hpx = FUNC6(GLUT_SCREEN_HEIGHT);
		if (wmm > 0 && hmm > 0)
		{
			float ppi = ((wpx * 254) / wmm + (hpx * 254) / hmm) / 20;
			if (ppi >= 144) ui_scale = 1.5f;
			if (ppi >= 192) ui_scale = 2.0f;
			if (ppi >= 288) ui_scale = 3.0f;
		}
	}

	ui.fontsize = DEFAULT_UI_FONTSIZE * ui_scale;
	ui.baseline = DEFAULT_UI_BASELINE * ui_scale;
	ui.lineheight = DEFAULT_UI_LINEHEIGHT * ui_scale;
	ui.gridsize = DEFAULT_UI_GRIDSIZE * ui_scale;

	FUNC21();

	ui.overlay_list = FUNC1(1);
}
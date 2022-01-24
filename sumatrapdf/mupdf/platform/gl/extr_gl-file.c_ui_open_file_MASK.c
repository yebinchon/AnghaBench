#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* text; } ;
struct TYPE_8__ {size_t selected; int count; int /*<<< orphan*/  list_dir; int /*<<< orphan*/  curdir; TYPE_1__* files; TYPE_2__ input_dir; } ;
struct TYPE_7__ {scalar_t__ key; int /*<<< orphan*/ * active; int /*<<< orphan*/  focus; int /*<<< orphan*/  gridsize; } ;
struct TYPE_5__ {char const* name; scalar_t__ is_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALL ; 
 int /*<<< orphan*/  B ; 
 int /*<<< orphan*/  BOTH ; 
 int /*<<< orphan*/  CENTER ; 
 int /*<<< orphan*/  GLUT_ELAPSED_TIME ; 
 int /*<<< orphan*/  ICON_DOCUMENT ; 
 int /*<<< orphan*/  ICON_FOLDER ; 
 scalar_t__ KEY_ENTER ; 
 scalar_t__ KEY_ESCAPE ; 
 int /*<<< orphan*/  L ; 
 int /*<<< orphan*/  NONE ; 
 int /*<<< orphan*/  NW ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  R ; 
 int /*<<< orphan*/  T ; 
 scalar_t__ UI_INPUT_ACCEPT ; 
 int /*<<< orphan*/  X ; 
 int /*<<< orphan*/  Y ; 
 TYPE_4__ fc ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_3__ ui ; 
 scalar_t__ FUNC4 (char*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 

int FUNC13(char filename[PATH_MAX])
{
	static int last_click_time = 0;
	static int last_click_sel = -1;
	int i, rv = 0;

	FUNC10(0, 0, 4, 4, 1);
	{
		FUNC6(L, Y, NW, 0, 0);
		FUNC10(150, 0, 0, 0, 0);
		{
			FUNC6(T, X, NW, 2, 2);
			FUNC2();
			FUNC6(B, X, NW, 2, 2);
			if (FUNC4("Cancel") || (!ui.focus && ui.key == KEY_ESCAPE))
			{
				filename[0] = 0;
				rv = 1;
			}
		}
		FUNC11();

		FUNC6(T, X, NW, 2, 2);
		FUNC10(0, ui.gridsize, 0, 0, 0);
		{
			if (fc.selected >= 0)
			{
				FUNC6(R, NONE, CENTER, 0, 0);
				if (FUNC4("Open") || (!ui.focus && ui.key == KEY_ENTER))
				{
					FUNC0(filename, PATH_MAX, "%s/%s", fc.curdir, fc.files[fc.selected].name);
					rv = 1;
				}
				FUNC12();
			}
			FUNC6(ALL, X, CENTER, 0, 0);
			if (FUNC5(&fc.input_dir, 0, 1) == UI_INPUT_ACCEPT)
				FUNC3(fc.input_dir.text);
		}
		FUNC11();

		FUNC6(ALL, BOTH, NW, 2, 2);
		FUNC7(&fc.list_dir, fc.count, 0, 0);
		for (i = 0; i < fc.count; ++i)
		{
			const char *name = fc.files[i].name;
			char buf[PATH_MAX];
			if (fc.files[i].is_dir)
				FUNC0(buf, sizeof buf, "%C %s", ICON_FOLDER, name);
			else
				FUNC0(buf, sizeof buf, "%C %s", ICON_DOCUMENT, name);
			if (FUNC9(&fc.list_dir, &fc.files[i], buf, i==fc.selected))
			{
				fc.selected = i;
				if (fc.files[i].is_dir)
				{
					FUNC0(buf, sizeof buf, "%s/%s", fc.curdir, name);
					FUNC3(buf);
					ui.active = NULL;
					last_click_sel = -1;
				}
				else
				{
					int click_time = FUNC1(GLUT_ELAPSED_TIME);
					if (i == last_click_sel && click_time < last_click_time + 250)
					{
						FUNC0(filename, PATH_MAX, "%s/%s", fc.curdir, name);
						rv = 1;
					}
					last_click_time = click_time;
					last_click_sel = i;
				}
			}
		}
		FUNC8(&fc.list_dir);
	}
	FUNC11();

	return rv;
}
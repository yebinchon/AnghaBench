#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* text; } ;
struct TYPE_9__ {int count; int selected; int /*<<< orphan*/  list_dir; TYPE_2__ input_file; int /*<<< orphan*/  curdir; TYPE_1__* files; TYPE_2__ input_dir; } ;
struct TYPE_8__ {scalar_t__ key; int /*<<< orphan*/ * active; int /*<<< orphan*/  gridsize; int /*<<< orphan*/  focus; } ;
struct TYPE_6__ {char* name; scalar_t__ is_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALL ; 
 int /*<<< orphan*/  B ; 
 int /*<<< orphan*/  BOTH ; 
 int /*<<< orphan*/  CENTER ; 
 int /*<<< orphan*/  ICON_DOCUMENT ; 
 int /*<<< orphan*/  ICON_FOLDER ; 
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
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_5__ fc ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_4__ ui ; 
 scalar_t__ FUNC4 (char*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 

int FUNC14(char filename[PATH_MAX], void (*extra_panel)(void))
{
	int i, rv = 0;

	FUNC11(0, 0, 4, 4, 1);
	{
		FUNC7(L, Y, NW, 0, 0);
		FUNC11(150, 0, 0, 0, 0);
		{
			FUNC7(T, X, NW, 2, 2);
			FUNC2();
			if (extra_panel)
			{
				FUNC13();
				extra_panel();
			}
			FUNC7(B, X, NW, 2, 2);
			if (FUNC4("Cancel") || (!ui.focus && ui.key == KEY_ESCAPE))
			{
				filename[0] = 0;
				rv = 1;
			}
		}
		FUNC12();

		FUNC7(T, X, NW, 2, 2);
		if (FUNC5(&fc.input_dir, 0, 1) == UI_INPUT_ACCEPT)
			FUNC3(fc.input_dir.text);

		FUNC7(T, X, NW, 2, 2);
		FUNC11(0, ui.gridsize, 0, 0, 0);
		{
			FUNC7(R, NONE, CENTER, 0, 0);
			if (FUNC4("Save"))
			{
				FUNC1(filename, PATH_MAX, "%s/%s", fc.curdir, fc.input_file.text);
				rv = 1;
			}
			FUNC13();
			if (FUNC4("\xe2\x9e\x95")) /* U+2795 HEAVY PLUS */
				FUNC0(1);
			if (FUNC4("\xe2\x9e\x96")) /* U+2796 HEAVY MINUS */
				FUNC0(-1);
			FUNC13();
			FUNC7(ALL, X, CENTER, 0, 0);
			FUNC5(&fc.input_file, 0, 1);
		}
		FUNC12();

		FUNC7(ALL, BOTH, NW, 2, 2);
		FUNC8(&fc.list_dir, fc.count, 0, 0);
		for (i = 0; i < fc.count; ++i)
		{
			const char *name = fc.files[i].name;
			char buf[PATH_MAX];
			if (fc.files[i].is_dir)
				FUNC1(buf, sizeof buf, "%C %s", ICON_FOLDER, name);
			else
				FUNC1(buf, sizeof buf, "%C %s", ICON_DOCUMENT, name);
			if (FUNC10(&fc.list_dir, &fc.files[i], buf, i==fc.selected))
			{
				fc.selected = i;
				if (fc.files[i].is_dir)
				{
					FUNC1(buf, sizeof buf, "%s/%s", fc.curdir, name);
					FUNC3(buf);
					ui.active = NULL;
				}
				else
				{
					FUNC6(&fc.input_file, name);
				}
			}
		}
		FUNC9(&fc.list_dir);
	}
	FUNC12();

	return rv;
}
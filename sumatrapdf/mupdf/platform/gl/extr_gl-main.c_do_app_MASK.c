#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mark {int /*<<< orphan*/  loc; } ;
struct TYPE_4__ {int /*<<< orphan*/  end; int /*<<< orphan*/  q; int /*<<< orphan*/  text; int /*<<< orphan*/  p; } ;
struct TYPE_3__ {int key; scalar_t__ mod; int x; int y; TYPE_2__* focus; int /*<<< orphan*/  dialog; scalar_t__ plain; scalar_t__ right; scalar_t__ middle; scalar_t__ down; } ;

/* Variables and functions */
 int DEFRES ; 
 scalar_t__ GLUT_ACTIVE_ALT ; 
#define  KEY_DOWN 135 
#define  KEY_ESCAPE 134 
#define  KEY_F1 133 
 int KEY_F4 ; 
#define  KEY_LEFT 132 
#define  KEY_PAGE_DOWN 131 
#define  KEY_PAGE_UP 130 
#define  KEY_RIGHT 129 
#define  KEY_UP 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int canvas_h ; 
 int canvas_w ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  ctx ; 
 int currentaa ; 
 int currenticc ; 
 int currentinvert ; 
 void* currentpage ; 
 int currentrotate ; 
 int currentseparations ; 
 int currenttint ; 
 int /*<<< orphan*/  currentzoom ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  doc ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  future_count ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int FUNC9 (int,int) ; 
 void* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 void* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  help_dialog ; 
 int /*<<< orphan*/  history_count ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 int /*<<< orphan*/  FUNC14 (void*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int layout_em ; 
 struct mark* marks ; 
 scalar_t__ FUNC17 (struct mark*) ; 
 int number ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (struct mark) ; 
 struct mark FUNC24 () ; 
 int scroll_x ; 
 int scroll_y ; 
 int search_active ; 
 int search_dir ; 
 int /*<<< orphan*/  search_hit_page ; 
 TYPE_2__ search_input ; 
 int /*<<< orphan*/  search_needle ; 
 void* search_page ; 
 int /*<<< orphan*/ * selected_annot ; 
 int /*<<< orphan*/  FUNC25 (int,int,int) ; 
 int showform ; 
 int showinfo ; 
 int showlinks ; 
 int showsearch ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 () ; 
 TYPE_1__ ui ; 
 int FUNC32 (int /*<<< orphan*/ ) ; 
 int FUNC33 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC34(void)
{
	if (ui.key == KEY_F4 && ui.mod == GLUT_ACTIVE_ALT)
		FUNC12();

	if (ui.down || ui.middle || ui.right || ui.key)
		showinfo = 0;

	if (!ui.focus && ui.key && ui.plain)
	{
		switch (ui.key)
		{
		case KEY_ESCAPE: FUNC3(); selected_annot = NULL; break;
		case KEY_F1: ui.dialog = help_dialog; break;
		case 'a': FUNC29(); break;
		case 'o': FUNC31(); break;
		case 'L': showlinks = !showlinks; break;
		case 'F': showform = !showform; break;
		case 'i': showinfo = !showinfo; break;
		case 'r': FUNC22(); break;
		case 'q': FUNC12(); break;
		case 'S': FUNC4(); break;

		case '>': layout_em = number > 0 ? number : layout_em + 1; FUNC21(); break;
		case '<': layout_em = number > 0 ? number : layout_em - 1; FUNC21(); break;

		case 'C': currenttint = !currenttint; break;
		case 'I': currentinvert = !currentinvert; break;
		case 'e': currentseparations = !currentseparations; break;
		case 'E': currenticc = !currenticc; break;
		case 'f': FUNC30(); break;
		case 'w': FUNC26(); break;
		case 'W': FUNC2(); break;
		case 'H': FUNC1(); break;
		case 'Z': FUNC0(); break;
		case 'z': FUNC25(number > 0 ? number : DEFRES, canvas_w/2, canvas_h/2); break;
		case '+': FUNC25(FUNC32(currentzoom), ui.x, ui.y); break;
		case '-': FUNC25(FUNC33(currentzoom), ui.x, ui.y); break;
		case '[': currentrotate -= 90; break;
		case ']': currentrotate += 90; break;
		case 'k': case KEY_UP: scroll_y -= 10; break;
		case 'j': case KEY_DOWN: scroll_y += 10; break;
		case 'h': case KEY_LEFT: scroll_x -= 10; break;
		case 'l': case KEY_RIGHT: scroll_x += 10; break;

		case 'b': number = FUNC9(number, 1); while (number--) FUNC27(); break;
		case ' ': number = FUNC9(number, 1); while (number--) FUNC28(); break;
		case 'g': FUNC16(number - 1); break;
		case 'G': FUNC15(FUNC7(ctx, doc)); break;

		case ',': case KEY_PAGE_UP:
			number = FUNC9(number, 1);
			while (number--)
				currentpage = FUNC11(ctx, doc, currentpage);
			break;
		case '.': case KEY_PAGE_DOWN:
			number = FUNC9(number, 1);
			while (number--)
				currentpage = FUNC10(ctx, doc, currentpage);
			break;

		case 'A':
			if (number == 0)
				currentaa = (currentaa == 8 ? 0 : 8);
			else
				currentaa = number;
			break;

		case 'm':
			if (number == 0)
				FUNC20();
			else if (number > 0 && number < (int)FUNC17(marks))
				marks[number] = FUNC24();
			break;
		case 't':
			if (number == 0)
			{
				if (history_count > 0)
					FUNC19();
			}
			else if (number > 0 && number < (int)FUNC17(marks))
			{
				struct mark mark = marks[number];
				FUNC23(mark);
				FUNC15(mark.loc);
			}
			break;
		case 'T':
			if (number == 0)
			{
				if (future_count > 0)
					FUNC18();
			}
			break;

		case '/':
			FUNC3();
			search_dir = 1;
			showsearch = 1;
			ui.focus = &search_input;
			search_input.p = search_input.text;
			search_input.q = search_input.end;
			break;
		case '?':
			FUNC3();
			search_dir = -1;
			showsearch = 1;
			ui.focus = &search_input;
			search_input.p = search_input.text;
			search_input.q = search_input.end;
			break;
		case 'N':
			search_dir = -1;
			search_active = !!search_needle;
			if (FUNC5(search_hit_page, currentpage))
			{
				search_page = FUNC11(ctx, doc, currentpage);
				if (FUNC13(search_page))
					search_active = 0;
			}
			else
			{
				search_page = currentpage;
			}
			search_hit_page = FUNC8(-1, -1);
			break;
		case 'n':
			search_dir = 1;
			search_active = !!search_needle;
			if (FUNC5(search_hit_page, currentpage))
			{
				search_page = FUNC10(ctx, doc, currentpage);
				if (FUNC14(search_page))
					search_active = 0;
			}
			else
			{
				search_page = currentpage;
			}
			search_hit_page = FUNC8(-1, -1);
			break;
		}

		if (ui.key >= '0' && ui.key <= '9')
			number = number * 10 + ui.key - '0';
		else
			number = 0;

		currentpage = FUNC6(ctx, doc, currentpage);
		while (currentrotate < 0) currentrotate += 360;
		while (currentrotate >= 360) currentrotate -= 360;

		if (!FUNC5(search_hit_page, currentpage))
			search_hit_page = FUNC8(-1, -1); /* clear highlights when navigating */

		ui.key = 0; /* we ate the key event, so zap it */
	}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  page; int /*<<< orphan*/  obj; } ;
struct TYPE_7__ {int gridsize; int lineheight; scalar_t__ key; int /*<<< orphan*/ * dialog; int /*<<< orphan*/  focus; } ;
struct TYPE_6__ {int /*<<< orphan*/  text; } ;

/* Variables and functions */
 int /*<<< orphan*/  B ; 
 scalar_t__ KEY_ESCAPE ; 
 int /*<<< orphan*/  NONE ; 
 int /*<<< orphan*/  NW ; 
 int PDF_TX_FIELD_IS_MULTILINE ; 
 int /*<<< orphan*/  R ; 
 int /*<<< orphan*/  S ; 
 int /*<<< orphan*/  T ; 
 int UI_INPUT_ACCEPT ; 
 int /*<<< orphan*/  X ; 
 int /*<<< orphan*/  ctx ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__ tx_input ; 
 TYPE_3__* tx_widget ; 
 TYPE_2__ ui ; 
 int FUNC5 (char*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static void FUNC15(void)
{
	int ff = FUNC0(ctx, tx_widget->obj);
	const char *label = FUNC1(ctx, tx_widget->obj);
	int tx_h = (ff & PDF_TX_FIELD_IS_MULTILINE) ? 10 : 1;
	int lbl_h = FUNC5((char*)label, NULL, 20, 394, NULL);
	int is;

	FUNC7(400, (ui.gridsize+4)*3 + ui.lineheight*(tx_h+lbl_h-2));
	{
		FUNC11(T, X, NW, 2, 2);
		FUNC10("%s", label);
		is = FUNC9(&tx_input, 200, tx_h);

		FUNC11(B, X, NW, 2, 2);
		FUNC12(0, ui.gridsize, 0, 0, 0);
		{
			FUNC11(R, NONE, S, 0, 0);
			if (FUNC6("Cancel") || (!ui.focus && ui.key == KEY_ESCAPE))
				ui.dialog = NULL;
			FUNC14();
			if (FUNC6("Okay") || is == UI_INPUT_ACCEPT)
			{
				FUNC2(ctx, tx_widget, tx_input.text);
				if (FUNC3(ctx, tx_widget->page))
					FUNC4();
				ui.dialog = NULL;
			}
		}
		FUNC13();
	}
	FUNC8();
}
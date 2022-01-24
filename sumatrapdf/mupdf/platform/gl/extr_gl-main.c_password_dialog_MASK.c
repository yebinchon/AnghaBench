#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int gridsize; scalar_t__ key; int /*<<< orphan*/ * dialog; int /*<<< orphan*/  focus; } ;
struct TYPE_4__ {int /*<<< orphan*/  text; } ;

/* Variables and functions */
 int /*<<< orphan*/  B ; 
 scalar_t__ KEY_ESCAPE ; 
 int /*<<< orphan*/  NONE ; 
 int /*<<< orphan*/  NW ; 
 int /*<<< orphan*/  R ; 
 int /*<<< orphan*/  S ; 
 int /*<<< orphan*/  T ; 
 int UI_INPUT_ACCEPT ; 
 int /*<<< orphan*/  X ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ input_password ; 
 int /*<<< orphan*/  password ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__ ui ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static void FUNC12(void)
{
	int is;
	FUNC4(400, (ui.gridsize+4)*3);
	{
		FUNC8(T, X, NW, 2, 2);
		FUNC7("Password:");
		is = FUNC6(&input_password, 200, 1);

		FUNC8(B, X, NW, 2, 2);
		FUNC9(0, ui.gridsize, 0, 0, 0);
		{
			FUNC8(R, NONE, S, 0, 0);
			if (FUNC3("Cancel") || (!ui.focus && ui.key == KEY_ESCAPE))
				FUNC0();
			FUNC11();
			if (FUNC3("Okay") || is == UI_INPUT_ACCEPT)
			{
				password = input_password.text;
				ui.dialog = NULL;
				FUNC1();
				FUNC2();
			}
		}
		FUNC10();
	}
	FUNC5();
}
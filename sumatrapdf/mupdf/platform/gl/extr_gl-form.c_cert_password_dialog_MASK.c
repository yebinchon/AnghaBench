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
struct TYPE_2__ {int gridsize; int /*<<< orphan*/ * dialog; } ;

/* Variables and functions */
 int /*<<< orphan*/  B ; 
 int /*<<< orphan*/  NONE ; 
 int /*<<< orphan*/  NW ; 
 int /*<<< orphan*/  R ; 
 int /*<<< orphan*/  S ; 
 int /*<<< orphan*/  T ; 
 int UI_INPUT_ACCEPT ; 
 int /*<<< orphan*/  X ; 
 int /*<<< orphan*/  cert_password ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ ui ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void FUNC10(void)
{
	int is;
	FUNC2(400, (ui.gridsize+4)*3);
	{
		FUNC6(T, X, NW, 2, 2);
		FUNC5("Password:");
		is = FUNC4(&cert_password, 200, 1);

		FUNC6(B, X, NW, 2, 2);
		FUNC7(0, ui.gridsize, 0, 0, 0);
		{
			FUNC6(R, NONE, S, 0, 0);
			if (FUNC1("Cancel"))
				ui.dialog = NULL;
			FUNC9();
			if (FUNC1("Okay") || is == UI_INPUT_ACCEPT)
			{
				ui.dialog = NULL;
				FUNC0();
			}
		}
		FUNC8();
	}
	FUNC3();
}
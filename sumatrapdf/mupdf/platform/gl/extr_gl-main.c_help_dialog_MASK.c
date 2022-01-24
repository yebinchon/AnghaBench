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
struct TYPE_2__ {scalar_t__ key; int /*<<< orphan*/ * dialog; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALL ; 
 int /*<<< orphan*/  B ; 
 int /*<<< orphan*/  BOTH ; 
 int /*<<< orphan*/  CENTER ; 
 int /*<<< orphan*/  FZ_VERSION ; 
 scalar_t__ KEY_ENTER ; 
 scalar_t__ KEY_ESCAPE ; 
 int /*<<< orphan*/  NONE ; 
 int /*<<< orphan*/  S ; 
 int /*<<< orphan*/  T ; 
 int /*<<< orphan*/  W ; 
 int /*<<< orphan*/  X ; 
 int /*<<< orphan*/  help_dialog_text ; 
 TYPE_1__ ui ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(void)
{
	static int scroll;
	FUNC1(500, 1000);
	FUNC5(T, X, W, 2, 2);
	FUNC3("MuPDF %s", FZ_VERSION);
	FUNC6();
	FUNC5(B, NONE, S, 2, 2);
	if (FUNC0("Okay") || ui.key == KEY_ENTER || ui.key == KEY_ESCAPE)
		ui.dialog = NULL;
	FUNC6();
	FUNC5(ALL, BOTH, CENTER, 2, 2);
	FUNC4(help_dialog_text, 0, 0, &scroll);
	FUNC2();
}
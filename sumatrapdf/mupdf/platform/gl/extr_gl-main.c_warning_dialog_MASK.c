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
struct TYPE_2__ {int gridsize; scalar_t__ key; int /*<<< orphan*/ * dialog; } ;

/* Variables and functions */
 int /*<<< orphan*/  B ; 
 scalar_t__ KEY_ENTER ; 
 scalar_t__ KEY_ESCAPE ; 
 int /*<<< orphan*/  NONE ; 
 int /*<<< orphan*/  NW ; 
 int /*<<< orphan*/  S ; 
 int /*<<< orphan*/  T ; 
 TYPE_1__ ui ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  warning_message ; 

__attribute__((used)) static void FUNC5(void)
{
	FUNC1(500, (ui.gridsize+4)*4);
	FUNC4(T, NONE, NW, 2, 2);
	FUNC3("%C %s", 0x26a0, warning_message); /* WARNING SIGN */
	FUNC4(B, NONE, S, 2, 2);
	if (FUNC0("Okay") || ui.key == KEY_ENTER || ui.key == KEY_ESCAPE)
		ui.dialog = NULL;
	FUNC2();
}
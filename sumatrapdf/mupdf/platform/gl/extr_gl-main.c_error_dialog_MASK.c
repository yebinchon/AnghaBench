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
struct TYPE_2__ {int gridsize; char key; } ;

/* Variables and functions */
 int /*<<< orphan*/  B ; 
 char KEY_ENTER ; 
 char KEY_ESCAPE ; 
 int /*<<< orphan*/  NONE ; 
 int /*<<< orphan*/  NW ; 
 int /*<<< orphan*/  S ; 
 int /*<<< orphan*/  T ; 
 int /*<<< orphan*/  error_message ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ ui ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC6(void)
{
	FUNC2(500, (ui.gridsize+4)*4);
	FUNC5(T, NONE, NW, 2, 2);
	FUNC4("%C %s", 0x1f4a3, error_message); /* BOMB */
	FUNC5(B, NONE, S, 2, 2);
	if (FUNC1("Quit") || ui.key == KEY_ENTER || ui.key == KEY_ESCAPE || ui.key == 'q')
		FUNC0();
	FUNC3();
}
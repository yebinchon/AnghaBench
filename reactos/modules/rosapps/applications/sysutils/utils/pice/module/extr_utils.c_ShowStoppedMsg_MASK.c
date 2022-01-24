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
struct TYPE_2__ {scalar_t__ cy; scalar_t__ y; } ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_CAPTION ; 
 int /*<<< orphan*/  COLOR_TEXT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 size_t OUTPUT_WINDOW ; 
 int /*<<< orphan*/  FUNC3 (char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* wWindow ; 

void FUNC7(void)
{
    FUNC1();

    FUNC6(COLOR_TEXT);
	FUNC5(COLOR_CAPTION);
	FUNC0(wWindow[OUTPUT_WINDOW].y+wWindow[OUTPUT_WINDOW].cy);
	FUNC3(" Stopped... (Type 'x' to continue) ",1,wWindow[OUTPUT_WINDOW].y+wWindow[OUTPUT_WINDOW].cy);
    FUNC4();

    FUNC2();
}
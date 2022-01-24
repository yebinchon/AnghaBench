#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Pg_BLACK ; 
 int /*<<< orphan*/  Pg_DRAWMODE_OPAQUE ; 
 int /*<<< orphan*/  Pg_DRAWMODE_XOR ; 
 int /*<<< orphan*/  Pg_WHITE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (long,int /*<<< orphan*/ ) ; 

void
FUNC5(int msec)
{
    FUNC1(Pg_BLACK, Pg_WHITE);
    FUNC0(Pg_DRAWMODE_XOR);
    FUNC2();
    FUNC3();

    FUNC4((long) msec, TRUE);

    FUNC2();
    FUNC0(Pg_DRAWMODE_OPAQUE);
    FUNC3();
}
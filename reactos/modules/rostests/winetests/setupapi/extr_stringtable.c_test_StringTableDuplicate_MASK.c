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
typedef  int /*<<< orphan*/ * HSTRING_TABLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 

__attribute__((used)) static void FUNC4(void)
{
    HSTRING_TABLE table, table2;

    table = FUNC3();
    FUNC0(table != NULL,"Failed to Initialize String Table\n");

    table2=FUNC2(table);
    FUNC0(table2!=NULL,"Failed to duplicate String Table\n");

    FUNC1(table);
    FUNC1(table2);
}
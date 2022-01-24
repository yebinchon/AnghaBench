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
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int FUNC1 () ; 
 int* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    int mb_cur_max;

    FUNC3(LC_ALL, "C");

    /* for newer Windows */
    if(!&p___mb_cur_max_func)
        FUNC5("Skipping ___mb_cur_max_func tests\n");
    else {
        mb_cur_max = FUNC1();
        FUNC0(mb_cur_max == 1, "mb_cur_max = %d, expected 1\n", mb_cur_max);

        /* some old Windows don't set chinese */
        if (!FUNC3(LC_ALL, "chinese"))
            FUNC5("Skipping test with chinese locale\n");
        else {
            mb_cur_max = FUNC1();
            FUNC0(mb_cur_max == 2, "mb_cur_max = %d, expected 2\n", mb_cur_max);
            FUNC3(LC_ALL, "C");
        }
    }

    /* for older Windows */
    if (!&p__p___mb_cur_max)
        FUNC4("Skipping __p___mb_cur_max tests\n");
    else {
        mb_cur_max = *FUNC2();
        FUNC0(mb_cur_max == 1, "mb_cur_max = %d, expected 1\n", mb_cur_max);

        /* some old Windows don't set chinese */
        if (!FUNC3(LC_ALL, "chinese"))
            FUNC5("Skipping test with chinese locale\n");
        else {
            mb_cur_max = *FUNC2();
            FUNC0(mb_cur_max == 2, "mb_cur_max = %d, expected 2\n", mb_cur_max);
            FUNC3(LC_ALL, "C");
        }
    }
}
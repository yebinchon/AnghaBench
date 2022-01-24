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
 int FUNC0 () ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 

__attribute__((used)) static void FUNC6(void)
{
    int ret, cp = FUNC0();

    ret = FUNC1(0);
    FUNC5(!ret, "got %d\n", ret);

    ret = FUNC2(0);
    FUNC5(!ret, "got %d\n", ret);

    ret = FUNC3(0);
    FUNC5(!ret, "got %d\n", ret);

    FUNC4(1252);

    ret = FUNC1(0x8140);
    FUNC5(!ret, "got %d\n", ret);

    ret = FUNC2(0x889f);
    FUNC5(!ret, "got %d\n", ret);

    ret = FUNC3(0x989f);
    FUNC5(!ret, "got %d\n", ret);

    FUNC4(932);

    ret = FUNC1(0);
    FUNC5(!ret, "got %d\n", ret);

    ret = FUNC1(0x8140);
    FUNC5(ret, "got %d\n", ret);

    ret = FUNC1(0x817f);
    FUNC5(!ret, "got %d\n", ret);

    ret = FUNC2(0);
    FUNC5(!ret, "got %d\n", ret);

    ret = FUNC2(0x889f);
    FUNC5(ret, "got %d\n", ret);

    ret = FUNC2(0x88fd);
    FUNC5(!ret, "got %d\n", ret);

    ret = FUNC3(0);
    FUNC5(!ret, "got %d\n", ret);

    ret = FUNC3(0x989f);
    FUNC5(ret, "got %d\n", ret);

    ret = FUNC3(0x993f);
    FUNC5(!ret, "got %d\n", ret);

    FUNC4(cp);
}
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
 int EOF ; 
 int /*<<< orphan*/  LC_ALL ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    int ret, cp = FUNC0();

    if(!&p_wctob || !FUNC4(LC_ALL, "chinese-traditional")) {
        FUNC5("Skipping wctob tests\n");
        return;
    }

    ret = FUNC3(0x8141);
    FUNC2(ret == EOF, "ret = %x\n", ret);

    ret = FUNC3(0x81);
    FUNC2(ret == EOF, "ret = %x\n", ret);

    ret = FUNC3(0xe0);
    FUNC2(ret == 0x61, "ret = %x\n", ret);

    FUNC1(1250);
    ret = FUNC3(0x81);
    FUNC2(ret == EOF, "ret = %x\n", ret);

    FUNC4(LC_ALL, "C");
    ret = FUNC3(0x8141);
    FUNC2(ret == EOF, "ret = %x\n", ret);

    ret = FUNC3(0x81);
    FUNC2(ret == (int)(char)0x81, "ret = %x\n", ret);

    ret = FUNC3(0x9f);
    FUNC2(ret == (int)(char)0x9f, "ret = %x\n", ret);

    ret = FUNC3(0xe0);
    FUNC2(ret == (int)(char)0xe0, "ret = %x\n", ret);

    FUNC1(cp);
}
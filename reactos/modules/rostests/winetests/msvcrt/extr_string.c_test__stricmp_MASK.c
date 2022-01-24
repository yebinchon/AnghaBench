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
 int FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(void)
{
    int ret;

    ret = FUNC0("test", "test");
    FUNC1(ret == 0, "_stricmp returned %d\n", ret);
    ret = FUNC0("a", "z");
    FUNC1(ret < 0, "_stricmp returned %d\n", ret);
    ret = FUNC0("z", "a");
    FUNC1(ret > 0, "_stricmp returned %d\n", ret);
    ret = FUNC0("\xa5", "\xb9");
    FUNC1(ret < 0, "_stricmp returned %d\n", ret);

    if(!FUNC2(LC_ALL, "polish")) {
        FUNC3("stricmp tests\n");
        return;
    }

    ret = FUNC0("test", "test");
    FUNC1(ret == 0, "_stricmp returned %d\n", ret);
    ret = FUNC0("a", "z");
    FUNC1(ret < 0, "_stricmp returned %d\n", ret);
    ret = FUNC0("z", "a");
    FUNC1(ret > 0, "_stricmp returned %d\n", ret);
    ret = FUNC0("\xa5", "\xb9");
    FUNC1(ret == 0, "_stricmp returned %d\n", ret);
    ret = FUNC0("a", "\xb9");
    FUNC1(ret < 0, "_stricmp returned %d\n", ret);

    FUNC2(LC_ALL, "C");
}
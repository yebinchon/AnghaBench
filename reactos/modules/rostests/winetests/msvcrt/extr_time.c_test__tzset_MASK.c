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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 
 int* FUNC5 () ; 
 int* FUNC6 () ; 
 int* FUNC7 () ; 
 int* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(void)
{
    char TZ_env[256];
    int ret;

    if(!&p___p__daylight || !&p___p__timezone || !&p___p__dstbias) {
        FUNC9("__p__daylight, __p__timezone or __p__dstbias is not available\n");
        return;
    }

    if (&p__dstbias) {
        ret = *FUNC8();
        FUNC4(ret == -3600, "*__dstbias() = %d\n", ret);
        ret = *FUNC6();
        FUNC4(ret == -3600, "*__p__dstbias() = %d\n", ret);
    }
    else
        FUNC10("__dstbias() is not available.\n");

    FUNC1(TZ_env,255,"TZ=%s",(FUNC3("TZ")?FUNC3("TZ"):""));

    ret = *FUNC5();
    FUNC4(ret == 1, "*__p__daylight() = %d\n", ret);
    ret = *FUNC7();
    FUNC4(ret == 28800, "*__p__timezone() = %d\n", ret);
    ret = *FUNC6();
    FUNC4(ret == -3600, "*__p__dstbias() = %d\n", ret);

    FUNC0("TZ=xxx+1yyy");
    FUNC2();
    ret = *FUNC5();
    FUNC4(ret == 121, "*__p__daylight() = %d\n", ret);
    ret = *FUNC7();
    FUNC4(ret == 3600, "*__p__timezone() = %d\n", ret);
    ret = *FUNC6();
    FUNC4(ret == -3600, "*__p__dstbias() = %d\n", ret);

    *FUNC6() = 0;
    FUNC0("TZ=xxx+1:3:5zzz");
    FUNC2();
    ret = *FUNC5();
    FUNC4(ret == 122, "*__p__daylight() = %d\n", ret);
    ret = *FUNC7();
    FUNC4(ret == 3785, "*__p__timezone() = %d\n", ret);
    ret = *FUNC6();
    FUNC4(ret == 0, "*__p__dstbias() = %d\n", ret);

    FUNC0(TZ_env);
}
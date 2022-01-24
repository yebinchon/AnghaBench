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
typedef  int /*<<< orphan*/  dest ;

/* Variables and functions */
 int EINVAL ; 
 size_t INT_MAX ; 
 int /*<<< orphan*/  LC_ALL ; 
 scalar_t__ FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 scalar_t__ p__atodbl_l ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 size_t FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    char dest[256];
    size_t ret;

    /* crashes on old version of msvcrt */
    if(p__atodbl_l) {
        errno = 0xdeadbeef;
        ret = FUNC4(NULL, "src", 1);
        FUNC1(ret == INT_MAX, "ret = %d\n", (int)ret);
        FUNC1(errno == EINVAL, "errno = %d\n", errno);

        errno = 0xdeadbeef;
        ret = FUNC4(dest, NULL, 100);
        FUNC1(ret == INT_MAX, "ret = %d\n", (int)ret);
        FUNC1(errno == EINVAL, "errno = %d\n", errno);
    }

    ret = FUNC4(NULL, "src", 0);
    FUNC1(ret == 3, "ret = %d\n", (int)ret);
    dest[0] = 'a';
    ret = FUNC4(dest, "src", 0);
    FUNC1(ret == 3, "ret = %d\n", (int)ret);
    FUNC1(dest[0] == 'a', "dest[0] = %d\n", dest[0]);

    dest[3] = 'a';
    ret = FUNC4(dest, "src", 5);
    FUNC1(ret == 3, "ret = %d\n", (int)ret);
    FUNC1(!FUNC3(dest, "src"), "dest = %s\n", dest);

    errno = 0xdeadbeef;
    dest[1] = 'a';
    ret = FUNC4(dest, "src", 1);
    FUNC1(ret == 3, "ret = %d\n", (int)ret);
    FUNC1(dest[0] == 's', "dest[0] = %d\n", dest[0]);
    FUNC1(dest[1] == 'a', "dest[1] = %d\n", dest[1]);
    FUNC1(errno == 0xdeadbeef, "errno = %d\n", errno);

    ret = FUNC4(dest, "", 5);
    FUNC1(ret == 0, "ret = %d\n", (int)ret);
    FUNC1(!dest[0], "dest[0] = %d\n", dest[0]);

    if(!FUNC2(LC_ALL, "polish")) {
        FUNC5("stxfrm tests\n");
        return;
    }

    ret = FUNC4(NULL, "src", 0);
    FUNC1(ret < sizeof(dest)-1, "ret = %d\n", (int)ret);
    dest[0] = 'a';
    ret = FUNC4(dest, "src", 0);
    FUNC1(ret < sizeof(dest)-1, "ret = %d\n", (int)ret);
    FUNC1(dest[0] == 'a', "dest[0] = %d\n", dest[0]);

    ret = FUNC4(dest, "src", ret+1);
    FUNC1(ret < sizeof(dest)-1, "ret = %d\n", (int)ret);
    FUNC1(dest[0], "dest[0] = 0\n");

    errno = 0xdeadbeef;
    dest[0] = 'a';
    ret = FUNC4(dest, "src", 5);
    FUNC1(ret>5 && ret<sizeof(dest)-1, "ret = %d\n", (int)ret);
    FUNC1(!dest[0] || FUNC0(!p__atodbl_l && dest[0]=='a'), "dest[0] = %d\n", dest[0]);

    FUNC2(LC_ALL, "C");
}
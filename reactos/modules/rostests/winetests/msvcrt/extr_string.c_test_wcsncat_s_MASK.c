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
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  abcW ;

/* Variables and functions */
 int EINVAL ; 
 int ERANGE ; 
 int STRUNCATE ; 
 int _TRUNCATE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int FUNC2 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void)
{
    static wchar_t abcW[] = {'a','b','c',0};
    int ret;
    wchar_t dst[4];
    wchar_t src[4];

    if (!&p_wcsncat_s)
    {
        FUNC3("skipping wcsncat_s tests\n");
        return;
    }

    FUNC0(src, abcW, sizeof(abcW));
    dst[0] = 0;
    ret = FUNC2(NULL, 4, src, 4);
    FUNC1(ret == EINVAL, "err = %d\n", ret);
    ret = FUNC2(dst, 0, src, 4);
    FUNC1(ret == EINVAL, "err = %d\n", ret);
    ret = FUNC2(dst, 0, src, _TRUNCATE);
    FUNC1(ret == EINVAL, "err = %d\n", ret);
    ret = FUNC2(dst, 4, NULL, 0);
    FUNC1(ret == 0, "err = %d\n", ret);

    dst[0] = 0;
    ret = FUNC2(dst, 2, src, 4);
    FUNC1(ret == ERANGE, "err = %d\n", ret);

    dst[0] = 0;
    ret = FUNC2(dst, 2, src, _TRUNCATE);
    FUNC1(ret == STRUNCATE, "err = %d\n", ret);
    FUNC1(dst[0] == 'a' && dst[1] == 0, "dst is %s\n", FUNC4(dst));

    FUNC0(dst, abcW, sizeof(abcW));
    dst[3] = 'd';
    ret = FUNC2(dst, 4, src, 4);
    FUNC1(ret == EINVAL, "err = %d\n", ret);
}
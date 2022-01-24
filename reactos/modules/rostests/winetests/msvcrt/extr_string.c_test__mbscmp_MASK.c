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
 int INT_MAX ; 
 int FUNC0 (unsigned char const*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  p_mbrlen ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
    static const unsigned char a[] = {'a',0}, b[] = {'b',0};
    int ret;

    if (!p_mbrlen)
    {
        FUNC2("_mbscmp tests\n");
        return;
    }

    ret = FUNC0(NULL, NULL);
    FUNC1(ret == INT_MAX, "got %d\n", ret);

    ret = FUNC0(a, NULL);
    FUNC1(ret == INT_MAX, "got %d\n", ret);

    ret = FUNC0(NULL, a);
    FUNC1(ret == INT_MAX, "got %d\n", ret);

    ret = FUNC0(a, a);
    FUNC1(!ret, "got %d\n", ret);

    ret = FUNC0(a, b);
    FUNC1(ret == -1, "got %d\n", ret);

    ret = FUNC0(b, a);
    FUNC1(ret == 1, "got %d\n", ret);
}
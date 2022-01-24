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
 int /*<<< orphan*/  SIGABRT ; 
 int /*<<< orphan*/  SIGSEGV ; 
 void** FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sighandler ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int test_value ; 

__attribute__((used)) static void FUNC4(void)
{
    void **ret = FUNC0();
    int res;

    FUNC1(ret != NULL, "ret == NULL\n");
    FUNC1(*ret == NULL, "*ret != NULL\n");

    test_value = 0;

    *ret = (void*)0xdeadbeef;
    FUNC3(SIGSEGV, sighandler);
    res = FUNC2(SIGSEGV);
    FUNC1(res == 0, "failed to raise SIGSEGV\n");
    FUNC1(*ret == (void*)0xdeadbeef, "*ret = %p\n", *ret);

    FUNC3(SIGABRT, sighandler);
    res = FUNC2(SIGABRT);
    FUNC1(res == 0, "failed to raise SIGBREAK\n");
    FUNC1(*ret == (void*)0xdeadbeef, "*ret = %p\n", *ret);

    FUNC1(test_value == 2, "test_value = %d\n", test_value);
}
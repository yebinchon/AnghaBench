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
typedef  scalar_t__ ULONG_PTR ;
typedef  scalar_t__ HKL ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_NOACCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 () ; 
 int KL_NAMELENGTH ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    BOOL ret;
    char klid[KL_NAMELENGTH];

    if (0) /* crashes on native system */
        ret = FUNC1(NULL);

    FUNC4(0xdeadbeef);
    ret = FUNC2(NULL);
    FUNC5(!ret, "got %d\n", ret);
    FUNC5(FUNC3() == ERROR_NOACCESS, "got %d\n", FUNC3());

    if (FUNC0(0) != (HKL)(ULONG_PTR)0x04090409) return;

    klid[0] = 0;
    ret = FUNC1(klid);
    FUNC5(ret, "GetKeyboardLayoutNameA failed %u\n", FUNC3());
    FUNC5(!FUNC6(klid, "00000409"), "expected 00000409, got %s\n", klid);
}
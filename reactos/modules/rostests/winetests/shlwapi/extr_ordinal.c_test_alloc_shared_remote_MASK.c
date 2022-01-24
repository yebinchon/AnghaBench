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
typedef  int /*<<< orphan*/  val ;
struct shared_struct {int value; int /*<<< orphan*/ * handle; } ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/ * FUNC5 (struct shared_struct*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct shared_struct* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct shared_struct*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(DWORD procid, HANDLE hmem)
{
    struct shared_struct val, *p;
    HANDLE hmem2;
    BOOL ret;

    /* test directly accessing shared memory of a remote process */
    p = FUNC7(hmem, procid);
    FUNC4(p != NULL || FUNC3(p == NULL) /* Windows 7/8 */, "SHLockShared failed: %u\n", FUNC1());
    if (p == NULL)
    {
        FUNC10("Subprocess failed to modify shared memory, skipping test\n");
        return;
    }

    FUNC4(p->value == 0x12345678, "Wrong value in shared memory: %d instead of %d\n", p->value, 0x12345678);
    p->value++;

    val.value = 0xDEADBEEF;
    val.handle = 0;
    p->handle = FUNC5(&val, sizeof(val), procid);
    FUNC4(p->handle != NULL, "SHAllocShared failed: %u\n", FUNC1());

    ret = FUNC9(p);
    FUNC4(ret, "SHUnlockShared failed: %u\n", FUNC1());

    /* test SHMapHandle */
    FUNC2(0xdeadbeef);
    hmem2 = FUNC8(NULL, procid, FUNC0(), 0, 0);
    FUNC4(hmem2 == NULL, "expected NULL, got new handle\n");
    FUNC4(FUNC1() == 0xdeadbeef, "last error should not have changed, got %u\n", FUNC1());

    hmem2 = FUNC8(hmem, procid, FUNC0(), 0, 0);

    /* It seems like Windows Vista/2008 uses a different internal implementation
     * for shared memory, and calling SHMapHandle fails. */
    FUNC4(hmem2 != NULL || FUNC3(hmem2 == NULL),
       "SHMapHandle failed: %u\n", FUNC1());
    if (hmem2 == NULL)
    {
        FUNC10("Subprocess failed to map shared memory, skipping test\n");
        return;
    }

    p = FUNC7(hmem2, FUNC0());
    FUNC4(p != NULL, "SHLockShared failed: %u\n", FUNC1());

    if (p != NULL)
        FUNC4(p->value == 0x12345679, "Wrong value in shared memory: %d instead of %d\n", p->value, 0x12345679);

    ret = FUNC9(p);
    FUNC4(ret, "SHUnlockShared failed: %u\n", FUNC1());

    ret = FUNC6(hmem2, FUNC0());
    FUNC4(ret, "SHFreeShared failed: %u\n", FUNC1());
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  val ;
struct shared_struct {int value; int /*<<< orphan*/ * handle; } ;
struct TYPE_6__ {int /*<<< orphan*/  hProcess; int /*<<< orphan*/  hThread; } ;
struct TYPE_5__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ STARTUPINFOA ;
typedef  TYPE_2__ PROCESS_INFORMATION ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/ * FUNC6 (struct shared_struct*,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 struct shared_struct* FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (struct shared_struct*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,char*,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(int argc, char **argv)
{
    char cmdline[MAX_PATH];
    PROCESS_INFORMATION pi;
    STARTUPINFOA si = { 0 };
    DWORD procid;
    HANDLE hmem, hmem2 = 0;
    struct shared_struct val, *p;
    BOOL ret;

    procid=FUNC2();
    hmem=FUNC6(NULL,10,procid);
    FUNC5(hmem!=NULL,"SHAllocShared(NULL...) failed: %u\n", FUNC3());
    ret = FUNC7(hmem, procid);
    FUNC5( ret, "SHFreeShared failed: %u\n", FUNC3());

    val.value = 0x12345678;
    val.handle = 0;
    hmem = FUNC6(&val, sizeof(val), procid);
    FUNC5(hmem!=NULL,"SHAllocShared(NULL...) failed: %u\n", FUNC3());

    p=FUNC8(hmem,procid);
    FUNC5(p!=NULL,"SHLockShared failed: %u\n", FUNC3());
    if (p!=NULL)
        FUNC5(p->value == 0x12345678, "Wrong value in shared memory: %d instead of %d\n", p->value, 0x12345678);
    ret = FUNC9(p);
    FUNC5( ret, "SHUnlockShared failed: %u\n", FUNC3());

    FUNC10(cmdline, "%s %s %d %p", argv[0], argv[1], procid, hmem);
    ret = FUNC1(NULL, cmdline, NULL, NULL, FALSE, 0, NULL, NULL, &si, &pi);
    FUNC5(ret, "could not create child process error: %u\n", FUNC3());
    if (ret)
    {
        FUNC11(pi.hProcess);
        FUNC0(pi.hThread);
        FUNC0(pi.hProcess);

        p = FUNC8(hmem, procid);
        FUNC5(p != NULL,"SHLockShared failed: %u\n", FUNC3());
        if (p != NULL && p->value != 0x12345678)
        {
            FUNC5(p->value == 0x12345679, "Wrong value in shared memory: %d instead of %d\n", p->value, 0x12345679);
            hmem2 = p->handle;
            FUNC5(hmem2 != NULL, "Expected handle in shared memory\n");
        }
        ret = FUNC9(p);
        FUNC5(ret, "SHUnlockShared failed: %u\n", FUNC3());
    }

    ret = FUNC7(hmem, procid);
    FUNC5( ret, "SHFreeShared failed: %u\n", FUNC3());

    if (hmem2)
    {
        p = FUNC8(hmem2, procid);
        FUNC5(p != NULL,"SHLockShared failed: %u\n", FUNC3());
        if (p != NULL)
            FUNC5(p->value == 0xDEADBEEF, "Wrong value in shared memory: %d instead of %d\n", p->value, 0xDEADBEEF);
        ret = FUNC9(p);
        FUNC5(ret, "SHUnlockShared failed: %u\n", FUNC3());

        ret = FUNC7(hmem2, procid);
        FUNC5(ret, "SHFreeShared failed: %u\n", FUNC3());
    }

    FUNC4(0xdeadbeef);
    ret = FUNC7(NULL, procid);
    FUNC5(ret, "SHFreeShared failed: %u\n", FUNC3());
    FUNC5(FUNC3() == 0xdeadbeef, "last error should not have changed, got %u\n", FUNC3());
}
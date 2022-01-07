
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int val ;
struct shared_struct {int value; int * handle; } ;
struct TYPE_6__ {int hProcess; int hThread; } ;
struct TYPE_5__ {int member_0; } ;
typedef TYPE_1__ STARTUPINFOA ;
typedef TYPE_2__ PROCESS_INFORMATION ;
typedef int * HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CloseHandle (int ) ;
 int CreateProcessA (int *,char*,int *,int *,int ,int ,int *,int *,TYPE_1__*,TYPE_2__*) ;
 int FALSE ;
 int GetCurrentProcessId () ;
 int GetLastError () ;
 int MAX_PATH ;
 int SetLastError (int) ;
 int ok (int,char*,...) ;
 int * pSHAllocShared (struct shared_struct*,int,int) ;
 int pSHFreeShared (int *,int) ;
 struct shared_struct* pSHLockShared (int *,int) ;
 int pSHUnlockShared (struct shared_struct*) ;
 int sprintf (char*,char*,char*,char*,int,int *) ;
 int winetest_wait_child_process (int ) ;

__attribute__((used)) static void test_alloc_shared(int argc, char **argv)
{
    char cmdline[MAX_PATH];
    PROCESS_INFORMATION pi;
    STARTUPINFOA si = { 0 };
    DWORD procid;
    HANDLE hmem, hmem2 = 0;
    struct shared_struct val, *p;
    BOOL ret;

    procid=GetCurrentProcessId();
    hmem=pSHAllocShared(((void*)0),10,procid);
    ok(hmem!=((void*)0),"SHAllocShared(NULL...) failed: %u\n", GetLastError());
    ret = pSHFreeShared(hmem, procid);
    ok( ret, "SHFreeShared failed: %u\n", GetLastError());

    val.value = 0x12345678;
    val.handle = 0;
    hmem = pSHAllocShared(&val, sizeof(val), procid);
    ok(hmem!=((void*)0),"SHAllocShared(NULL...) failed: %u\n", GetLastError());

    p=pSHLockShared(hmem,procid);
    ok(p!=((void*)0),"SHLockShared failed: %u\n", GetLastError());
    if (p!=((void*)0))
        ok(p->value == 0x12345678, "Wrong value in shared memory: %d instead of %d\n", p->value, 0x12345678);
    ret = pSHUnlockShared(p);
    ok( ret, "SHUnlockShared failed: %u\n", GetLastError());

    sprintf(cmdline, "%s %s %d %p", argv[0], argv[1], procid, hmem);
    ret = CreateProcessA(((void*)0), cmdline, ((void*)0), ((void*)0), FALSE, 0, ((void*)0), ((void*)0), &si, &pi);
    ok(ret, "could not create child process error: %u\n", GetLastError());
    if (ret)
    {
        winetest_wait_child_process(pi.hProcess);
        CloseHandle(pi.hThread);
        CloseHandle(pi.hProcess);

        p = pSHLockShared(hmem, procid);
        ok(p != ((void*)0),"SHLockShared failed: %u\n", GetLastError());
        if (p != ((void*)0) && p->value != 0x12345678)
        {
            ok(p->value == 0x12345679, "Wrong value in shared memory: %d instead of %d\n", p->value, 0x12345679);
            hmem2 = p->handle;
            ok(hmem2 != ((void*)0), "Expected handle in shared memory\n");
        }
        ret = pSHUnlockShared(p);
        ok(ret, "SHUnlockShared failed: %u\n", GetLastError());
    }

    ret = pSHFreeShared(hmem, procid);
    ok( ret, "SHFreeShared failed: %u\n", GetLastError());

    if (hmem2)
    {
        p = pSHLockShared(hmem2, procid);
        ok(p != ((void*)0),"SHLockShared failed: %u\n", GetLastError());
        if (p != ((void*)0))
            ok(p->value == 0xDEADBEEF, "Wrong value in shared memory: %d instead of %d\n", p->value, 0xDEADBEEF);
        ret = pSHUnlockShared(p);
        ok(ret, "SHUnlockShared failed: %u\n", GetLastError());

        ret = pSHFreeShared(hmem2, procid);
        ok(ret, "SHFreeShared failed: %u\n", GetLastError());
    }

    SetLastError(0xdeadbeef);
    ret = pSHFreeShared(((void*)0), procid);
    ok(ret, "SHFreeShared failed: %u\n", GetLastError());
    ok(GetLastError() == 0xdeadbeef, "last error should not have changed, got %u\n", GetLastError());
}

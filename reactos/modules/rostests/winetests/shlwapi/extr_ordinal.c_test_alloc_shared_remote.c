
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
struct shared_struct {int value; int * handle; } ;
typedef int * HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int GetCurrentProcessId () ;
 int GetLastError () ;
 int SetLastError (int) ;
 scalar_t__ broken (int ) ;
 int ok (int,char*,...) ;
 int * pSHAllocShared (struct shared_struct*,int,int ) ;
 int pSHFreeShared (int *,int ) ;
 struct shared_struct* pSHLockShared (int *,int ) ;
 int * pSHMapHandle (int *,int ,int ,int ,int ) ;
 int pSHUnlockShared (struct shared_struct*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_alloc_shared_remote(DWORD procid, HANDLE hmem)
{
    struct shared_struct val, *p;
    HANDLE hmem2;
    BOOL ret;


    p = pSHLockShared(hmem, procid);
    ok(p != ((void*)0) || broken(p == ((void*)0)) , "SHLockShared failed: %u\n", GetLastError());
    if (p == ((void*)0))
    {
        win_skip("Subprocess failed to modify shared memory, skipping test\n");
        return;
    }

    ok(p->value == 0x12345678, "Wrong value in shared memory: %d instead of %d\n", p->value, 0x12345678);
    p->value++;

    val.value = 0xDEADBEEF;
    val.handle = 0;
    p->handle = pSHAllocShared(&val, sizeof(val), procid);
    ok(p->handle != ((void*)0), "SHAllocShared failed: %u\n", GetLastError());

    ret = pSHUnlockShared(p);
    ok(ret, "SHUnlockShared failed: %u\n", GetLastError());


    SetLastError(0xdeadbeef);
    hmem2 = pSHMapHandle(((void*)0), procid, GetCurrentProcessId(), 0, 0);
    ok(hmem2 == ((void*)0), "expected NULL, got new handle\n");
    ok(GetLastError() == 0xdeadbeef, "last error should not have changed, got %u\n", GetLastError());

    hmem2 = pSHMapHandle(hmem, procid, GetCurrentProcessId(), 0, 0);



    ok(hmem2 != ((void*)0) || broken(hmem2 == ((void*)0)),
       "SHMapHandle failed: %u\n", GetLastError());
    if (hmem2 == ((void*)0))
    {
        win_skip("Subprocess failed to map shared memory, skipping test\n");
        return;
    }

    p = pSHLockShared(hmem2, GetCurrentProcessId());
    ok(p != ((void*)0), "SHLockShared failed: %u\n", GetLastError());

    if (p != ((void*)0))
        ok(p->value == 0x12345679, "Wrong value in shared memory: %d instead of %d\n", p->value, 0x12345679);

    ret = pSHUnlockShared(p);
    ok(ret, "SHUnlockShared failed: %u\n", GetLastError());

    ret = pSHFreeShared(hmem2, GetCurrentProcessId());
    ok(ret, "SHFreeShared failed: %u\n", GetLastError());
}

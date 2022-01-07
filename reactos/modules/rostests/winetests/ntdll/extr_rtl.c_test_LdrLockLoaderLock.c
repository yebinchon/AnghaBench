
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG_PTR ;
typedef int ULONG ;
typedef int NTSTATUS ;


 int STATUS_INVALID_PARAMETER_1 ;
 int STATUS_INVALID_PARAMETER_2 ;
 int STATUS_INVALID_PARAMETER_3 ;
 int STATUS_SUCCESS ;
 int ok (int,char*,int) ;
 int pLdrLockLoaderLock (int,int*,int*) ;
 int pLdrUnlockLoaderLock (int ,int) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_LdrLockLoaderLock(void)
{
    ULONG_PTR magic;
    ULONG result;
    NTSTATUS status;

    if (!pLdrLockLoaderLock)
    {
        win_skip("LdrLockLoaderLock() is not available\n");
        return;
    }


    result = 10;
    magic = 0xdeadbeef;
    status = pLdrLockLoaderLock(0x10, &result, &magic);
    ok(status == STATUS_INVALID_PARAMETER_1, "got 0x%08x\n", status);
    ok(result == 0, "got %d\n", result);
    ok(magic == 0, "got %lx\n", magic);

    magic = 0xdeadbeef;
    status = pLdrLockLoaderLock(0x10, ((void*)0), &magic);
    ok(status == STATUS_INVALID_PARAMETER_1, "got 0x%08x\n", status);
    ok(magic == 0, "got %lx\n", magic);

    result = 10;
    status = pLdrLockLoaderLock(0x10, &result, ((void*)0));
    ok(status == STATUS_INVALID_PARAMETER_1, "got 0x%08x\n", status);
    ok(result == 0, "got %d\n", result);


    magic = 0xdeadbeef;
    status = pLdrLockLoaderLock(0x2, ((void*)0), &magic);
    ok(status == STATUS_INVALID_PARAMETER_2, "got 0x%08x\n", status);
    ok(magic == 0, "got %lx\n", magic);


    result = 10;
    status = pLdrLockLoaderLock(0, &result, ((void*)0));
    ok(status == STATUS_INVALID_PARAMETER_3, "got 0x%08x\n", status);
    ok(result == 0, "got %d\n", result);


    result = 0;
    magic = 0;
    status = pLdrLockLoaderLock(0x2, &result, &magic);
    ok(status == STATUS_SUCCESS, "got 0x%08x\n", status);
    ok(result == 1, "got %d\n", result);
    ok(magic != 0, "got %lx\n", magic);
    pLdrUnlockLoaderLock(0, magic);
}

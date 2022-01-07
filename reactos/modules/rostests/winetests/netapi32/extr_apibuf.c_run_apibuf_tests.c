
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__ NET_API_STATUS ;
typedef int DWORD ;


 scalar_t__ ERROR_INVALID_PARAMETER ;
 int GetLastError () ;
 scalar_t__ NERR_Success ;
 int SetLastError (int) ;
 int ok (int,char*,...) ;
 scalar_t__ pNetApiBufferAllocate (int,int **) ;
 scalar_t__ pNetApiBufferFree (int *) ;
 scalar_t__ pNetApiBufferReallocate (int *,int,int **) ;
 scalar_t__ pNetApiBufferSize (int *,int*) ;

__attribute__((used)) static void run_apibuf_tests(void)
{
    VOID *p;
    DWORD dwSize;
    NET_API_STATUS res;


    ok(pNetApiBufferAllocate(1024, &p) == NERR_Success,
       "Reserved memory\n");
    ok(pNetApiBufferSize(p, &dwSize) == NERR_Success, "Got size\n");
    ok(dwSize >= 1024, "The size is correct\n");

    ok(pNetApiBufferReallocate(p, 1500, &p) == NERR_Success,
       "Reallocated\n");
    ok(pNetApiBufferSize(p, &dwSize) == NERR_Success, "Got size\n");
    ok(dwSize >= 1500, "The size is correct\n");

    ok(pNetApiBufferFree(p) == NERR_Success, "Freed\n");

    ok(pNetApiBufferSize(((void*)0), &dwSize) == ERROR_INVALID_PARAMETER, "Error for NULL pointer\n");


    ok(pNetApiBufferReallocate(0, 1500, &p) == NERR_Success, "Reallocate with OldBuffer = NULL failed\n");
    ok(p != ((void*)0), "No memory got allocated\n");
    ok(pNetApiBufferFree(p) == NERR_Success, "NetApiBufferFree failed\n");

    ok(pNetApiBufferAllocate(1024, &p) == NERR_Success, "Memory not reserved\n");
    ok(pNetApiBufferReallocate(p, 0, &p) == NERR_Success, "Not freed\n");
    ok(p == ((void*)0), "Pointer not cleared\n");


    ok(pNetApiBufferAllocate(0, &p) == NERR_Success,
       "Reserved memory\n");
    ok(pNetApiBufferSize(p, &dwSize) == NERR_Success, "Got size\n");
    ok(dwSize < 0xFFFFFFFF, "The size of the 0-length buffer\n");
    ok(pNetApiBufferFree(p) == NERR_Success, "Freed\n");



    SetLastError(0xdeadbeef);
    res = pNetApiBufferAllocate(0, ((void*)0));
    ok( (res == ERROR_INVALID_PARAMETER) && (GetLastError() == 0xdeadbeef),
        "returned %d with 0x%x (expected ERROR_INVALID_PARAMETER with "
        "0xdeadbeef)\n", res, GetLastError());

    SetLastError(0xdeadbeef);
    res = pNetApiBufferAllocate(1024, ((void*)0));
    ok( (res == ERROR_INVALID_PARAMETER) && (GetLastError() == 0xdeadbeef),
        "returned %d with 0x%x (expected ERROR_INVALID_PARAMETER with "
        "0xdeadbeef)\n", res, GetLastError());
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_INVALID_HANDLE ;
 scalar_t__ FindCloseUrlCache (int *) ;
 scalar_t__ GetLastError () ;
 int SetLastError (int) ;
 int ok (int,char*,scalar_t__,...) ;

__attribute__((used)) static void test_FindCloseUrlCache(void)
{
    BOOL r;
    DWORD err;

    SetLastError(0xdeadbeef);
    r = FindCloseUrlCache(((void*)0));
    err = GetLastError();
    ok(0 == r, "expected 0, got %d\n", r);
    ok(ERROR_INVALID_HANDLE == err, "expected %d, got %d\n", ERROR_INVALID_HANDLE, err);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HANDLE ;
typedef scalar_t__ DWORD ;


 int GetLastError () ;
 int * INVALID_HANDLE_VALUE ;
 int SERVER_ACCESS_ADMINISTER ;
 int SetLastError (int) ;
 int emptyW ;
 int ok (scalar_t__,char*,scalar_t__,int ,...) ;
 scalar_t__ pXcvClosePort (int *) ;
 scalar_t__ pXcvOpenPort (int ,int ,int **) ;

__attribute__((used)) static void test_XcvClosePort(void)
{
    DWORD res;
    HANDLE hXcv2;


    if (0)
    {

        pXcvClosePort(((void*)0));
        pXcvClosePort(INVALID_HANDLE_VALUE);
    }


    SetLastError(0xdeadbeef);
    hXcv2 = (HANDLE) 0xdeadbeef;
    res = pXcvOpenPort(emptyW, SERVER_ACCESS_ADMINISTER, &hXcv2);
    ok(res, "returned %d with %u and %p (expected '!= 0')\n", res, GetLastError(), hXcv2);

    if (res) {
        SetLastError(0xdeadbeef);
        res = pXcvClosePort(hXcv2);
        ok(res, "returned %d with %u (expected '!= 0')\n", res, GetLastError());

        if (0)
        {

            pXcvClosePort(hXcv2);
        }
    }
}

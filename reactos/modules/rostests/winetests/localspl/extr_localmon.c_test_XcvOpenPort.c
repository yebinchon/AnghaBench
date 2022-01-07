
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;


 int GetLastError () ;
 int SERVER_ACCESS_ADMINISTER ;
 int SERVER_ALL_ACCESS ;
 int SetLastError (int) ;
 int * emptyW ;
 int ok (scalar_t__,char*,scalar_t__,int ,scalar_t__) ;
 int pXcvClosePort (scalar_t__) ;
 scalar_t__ pXcvOpenPort (int *,int ,scalar_t__*) ;
 int * portname_fileW ;
 int * portname_lpt1W ;

__attribute__((used)) static void test_XcvOpenPort(void)
{
    DWORD res;
    HANDLE hXcv2;


    if (0)
    {

        pXcvOpenPort(((void*)0), SERVER_ACCESS_ADMINISTER, &hXcv2);
        pXcvOpenPort(emptyW, SERVER_ACCESS_ADMINISTER, ((void*)0));
    }



    SetLastError(0xdeadbeef);
    hXcv2 = (HANDLE) 0xdeadbeef;
    res = pXcvOpenPort(emptyW, SERVER_ACCESS_ADMINISTER, &hXcv2);
    ok(res, "returned %d with %u and %p (expected '!= 0')\n", res, GetLastError(), hXcv2);
    if (res) pXcvClosePort(hXcv2);



    SetLastError(0xdeadbeef);
    hXcv2 = (HANDLE) 0xdeadbeef;
    res = pXcvOpenPort(emptyW, 0, &hXcv2);
    ok(res, "returned %d with %u and %p (expected '!= 0')\n", res, GetLastError(), hXcv2);
    if (res) pXcvClosePort(hXcv2);



    SetLastError(0xdeadbeef);
    hXcv2 = (HANDLE) 0xdeadbeef;
    res = pXcvOpenPort(portname_lpt1W, SERVER_ALL_ACCESS, &hXcv2);
    ok(res, "returned %d with %u and %p (expected '!= 0')\n", res, GetLastError(), hXcv2);
    if (res) pXcvClosePort(hXcv2);

    SetLastError(0xdeadbeef);
    hXcv2 = (HANDLE) 0xdeadbeef;
    res = pXcvOpenPort(portname_fileW, SERVER_ALL_ACCESS, &hXcv2);
    ok(res, "returned %d with %u and %p (expected '!= 0')\n", res, GetLastError(), hXcv2);
    if (res) pXcvClosePort(hXcv2);

}

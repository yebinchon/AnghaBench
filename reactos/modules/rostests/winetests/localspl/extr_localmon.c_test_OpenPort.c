
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* LPWSTR ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ GetLastError () ;
 int SetLastError (int) ;
 scalar_t__* does_not_existW ;
 scalar_t__* emptyW ;
 scalar_t__* have_com ;
 scalar_t__* have_file ;
 scalar_t__* have_lpt ;
 int ok (int,char*,int,scalar_t__,scalar_t__,...) ;
 int pClosePort (scalar_t__) ;
 int pOpenPort (scalar_t__*,scalar_t__*) ;
 int trace (char*,int,scalar_t__,scalar_t__) ;

__attribute__((used)) static void test_OpenPort(void)
{
    HANDLE hPort;
    HANDLE hPort2;
    LPWSTR nameW = ((void*)0);
    DWORD res;
    DWORD res2;

    if (!pOpenPort || !pClosePort) return;

    if (have_com[0]) {
        nameW = have_com;

        hPort = (HANDLE) 0xdeadbeef;
        SetLastError(0xdeadbeef);
        res = pOpenPort(nameW, &hPort);
        ok( res, "got %u with %u and %p (expected '!= 0')\n",
            res, GetLastError(), hPort);


        hPort2 = (HANDLE) 0xdeadbeef;
        SetLastError(0xdeadbeef);
        res2 = pOpenPort(nameW, &hPort2);
        ok( res2, "got %u with %u and %p (expected '!= 0')\n",
            res2, GetLastError(), hPort2);

        if (res) pClosePort(hPort);
        if (res2 && (hPort2 != hPort)) pClosePort(hPort2);
    }

    if (have_lpt[0]) {
        nameW = have_lpt;

        hPort = (HANDLE) 0xdeadbeef;
        SetLastError(0xdeadbeef);
        res = pOpenPort(nameW, &hPort);
        ok( res || (GetLastError() == ERROR_ACCESS_DENIED),
            "got %u with %u and %p (expected '!= 0' or '0' with ERROR_ACCESS_DENIED)\n",
            res, GetLastError(), hPort);


        hPort2 = (HANDLE) 0xdeadbeef;
        SetLastError(0xdeadbeef);
        res2 = pOpenPort(nameW, &hPort2);
        ok( res2 || (GetLastError() == ERROR_ACCESS_DENIED),
            "got %u with %u and %p (expected '!= 0' or '0' with ERROR_ACCESS_DENIED)\n",
            res2, GetLastError(), hPort2);

        if (res) pClosePort(hPort);
        if (res2 && (hPort2 != hPort)) pClosePort(hPort2);
    }

    if (have_file[0]) {
        nameW = have_file;

        hPort = (HANDLE) 0xdeadbeef;
        SetLastError(0xdeadbeef);
        res = pOpenPort(nameW, &hPort);
        ok( res, "got %u with %u and %p (expected '!= 0')\n",
            res, GetLastError(), hPort);


        hPort2 = (HANDLE) 0xdeadbeef;
        SetLastError(0xdeadbeef);
        res2 = pOpenPort(nameW, &hPort2);
        ok( res2 && (hPort2 != hPort),
            "got %u with %u and %p (expected '!= 0' and '!= %p')\n",
            res2, GetLastError(), hPort2, hPort);

        if (res) pClosePort(hPort);
        if (res2 && (hPort2 != hPort)) pClosePort(hPort2);
    }

    if (0) {

        if (nameW) {
            hPort = (HANDLE) 0xdeadbeef;
            SetLastError(0xdeadbeef);
            res = pOpenPort(nameW, ((void*)0));
            trace("got %u with %u and %p\n", res, GetLastError(), hPort);
        }
    }

    hPort = (HANDLE) 0xdeadbeef;
    SetLastError(0xdeadbeef);
    res = pOpenPort(does_not_existW, &hPort);
    ok (!res && (hPort == (HANDLE) 0xdeadbeef),
        "got %u with 0x%x and %p (expected '0' and 0xdeadbeef)\n", res, GetLastError(), hPort);
    if (res) pClosePort(hPort);

    hPort = (HANDLE) 0xdeadbeef;
    SetLastError(0xdeadbeef);
    res = pOpenPort(emptyW, &hPort);
    ok (!res && (hPort == (HANDLE) 0xdeadbeef),
        "got %u with 0x%x and %p (expected '0' and 0xdeadbeef)\n", res, GetLastError(), hPort);
    if (res) pClosePort(hPort);



    if (0) {
        hPort = (HANDLE) 0xdeadbeef;
        SetLastError(0xdeadbeef);
        res = pOpenPort(((void*)0), &hPort);
        trace("got %u with %u and %p\n", res, GetLastError(), hPort);
    }

}

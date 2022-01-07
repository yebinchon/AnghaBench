
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* LPWSTR ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;


 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int SetLastError (int) ;
 scalar_t__* have_com ;
 scalar_t__* have_file ;
 scalar_t__* have_lpt ;
 int ok (scalar_t__,char*,scalar_t__,int ) ;
 scalar_t__ pClosePort (scalar_t__) ;
 scalar_t__ pOpenPort (scalar_t__*,scalar_t__*) ;
 int trace (char*,scalar_t__,int ) ;

__attribute__((used)) static void test_ClosePort(void)
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
        res = pOpenPort(nameW, &hPort);
        hPort2 = (HANDLE) 0xdeadbeef;
        res2 = pOpenPort(nameW, &hPort2);

        if (res2 && (hPort2 != hPort)) {
            SetLastError(0xdeadbeef);
            res2 = pClosePort(hPort2);
            ok(res2, "got %u with %u (expected '!= 0')\n", res2, GetLastError());
        }

        if (res) {
            SetLastError(0xdeadbeef);
            res = pClosePort(hPort);
            ok(res, "got %u with %u (expected '!= 0')\n", res, GetLastError());
        }
    }


    if (have_lpt[0]) {
        nameW = have_lpt;

        hPort = (HANDLE) 0xdeadbeef;
        res = pOpenPort(nameW, &hPort);
        hPort2 = (HANDLE) 0xdeadbeef;
        res2 = pOpenPort(nameW, &hPort2);

        if (res2 && (hPort2 != hPort)) {
            SetLastError(0xdeadbeef);
            res2 = pClosePort(hPort2);
            ok(res2, "got %u with %u (expected '!= 0')\n", res2, GetLastError());
        }

        if (res) {
            SetLastError(0xdeadbeef);
            res = pClosePort(hPort);
            ok(res, "got %u with %u (expected '!= 0')\n", res, GetLastError());
        }
    }


    if (have_file[0]) {
        nameW = have_file;

        hPort = (HANDLE) 0xdeadbeef;
        res = pOpenPort(nameW, &hPort);
        hPort2 = (HANDLE) 0xdeadbeef;
        res2 = pOpenPort(nameW, &hPort2);

        if (res2 && (hPort2 != hPort)) {
            SetLastError(0xdeadbeef);
            res2 = pClosePort(hPort2);
            ok(res2, "got %u with %u (expected '!= 0')\n", res2, GetLastError());
        }

        if (res) {
            SetLastError(0xdeadbeef);
            res = pClosePort(hPort);
            ok(res, "got %u with %u (expected '!= 0')\n", res, GetLastError());
        }

    }

    if (0) {


        SetLastError(0xdeadbeef);
        res = pClosePort(((void*)0));
        trace("got %u with %u\n", res, GetLastError());

        SetLastError(0xdeadbeef);
        res = pClosePort( (HANDLE) 0xdeadbeef);
        trace("got %u with %u\n", res, GetLastError());

        SetLastError(0xdeadbeef);
        res = pClosePort(INVALID_HANDLE_VALUE);
        trace("got %u with %u\n", res, GetLastError());
    }

}

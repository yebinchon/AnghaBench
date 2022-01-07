
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fPortType; int pDescription; int * pMonitorName; int * pPortName; } ;
typedef TYPE_1__ PORT_INFO_2A ;
typedef int * LPBYTE ;
typedef int DWORD ;


 int DeletePortA (int *,int ,void*) ;
 scalar_t__ ERROR_INVALID_LEVEL ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ GetLastError () ;
 int * LocalPortA ;
 int PORT_TYPE_WRITE ;
 int SetLastError (int) ;
 int * does_not_exist ;
 int * empty ;
 scalar_t__ is_spooler_deactivated (int,scalar_t__) ;
 int ok (int,char*,int,scalar_t__) ;
 int pAddPortExA (int *,int,int *,int *) ;
 int skip (char*) ;
 void* tempfileA ;
 int win_skip (char*) ;
 int winetest ;

__attribute__((used)) static void test_AddPortEx(void)
{
    PORT_INFO_2A pi;
    DWORD res;


    if (!pAddPortExA) {
        win_skip("AddPortEx not supported\n");
        return;
    }


    DeletePortA(((void*)0), 0, tempfileA);

    pi.pPortName = tempfileA;
    SetLastError(0xdeadbeef);
    res = pAddPortExA(((void*)0), 1, (LPBYTE) &pi, LocalPortA);
    if (is_spooler_deactivated(res, GetLastError())) return;



    if (!res && (GetLastError() == ERROR_INVALID_PARAMETER)) {
        skip("ACCESS_DENIED (ERROR_INVALID_PARAMETER)\n");
        return;
    }
    ok( res, "got %u with %u (expected '!= 0')\n", res, GetLastError());


    SetLastError(0xdeadbeef);
    res = pAddPortExA(((void*)0), 1, (LPBYTE) &pi, LocalPortA);
    ok( !res && (GetLastError() == ERROR_INVALID_PARAMETER),
        "got %u with %u (expected '0' with ERROR_INVALID_PARAMETER)\n",
        res, GetLastError());
    DeletePortA(((void*)0), 0, tempfileA);



    SetLastError(0xdeadbeef);
    res = pAddPortExA(((void*)0), 1, (LPBYTE) &pi, ((void*)0));
    ok( !res && (GetLastError() == ERROR_INVALID_PARAMETER),
        "got %u with %u (expected '0' with ERROR_INVALID_PARAMETER)\n",
        res, GetLastError());
    if (res) DeletePortA(((void*)0), 0, tempfileA);

    SetLastError(0xdeadbeef);
    res = pAddPortExA(((void*)0), 1, (LPBYTE) &pi, empty);
    ok( !res && (GetLastError() == ERROR_INVALID_PARAMETER),
        "got %u with %u (expected '0' with ERROR_INVALID_PARAMETER)\n",
        res, GetLastError());
    if (res) DeletePortA(((void*)0), 0, tempfileA);

    SetLastError(0xdeadbeef);
    res = pAddPortExA(((void*)0), 1, (LPBYTE) &pi, does_not_exist);
    ok( !res && (GetLastError() == ERROR_INVALID_PARAMETER),
        "got %u with %u (expected '0' with ERROR_INVALID_PARAMETER)\n",
        res, GetLastError());
    if (res) DeletePortA(((void*)0), 0, tempfileA);



    SetLastError(0xdeadbeef);
    res = pAddPortExA(((void*)0), 1, ((void*)0), LocalPortA);
    ok( !res && (GetLastError() == ERROR_INVALID_PARAMETER),
        "got %u with %u (expected '0' with ERROR_INVALID_PARAMETER)\n",
        res, GetLastError());

    pi.pPortName = ((void*)0);
    SetLastError(0xdeadbeef);
    res = pAddPortExA(((void*)0), 1, (LPBYTE) &pi, LocalPortA);
    ok( !res && (GetLastError() == ERROR_INVALID_PARAMETER),
        "got %u with %u (expected '0' with ERROR_INVALID_PARAMETER)\n",
        res, GetLastError());
    if (res) DeletePortA(((void*)0), 0, tempfileA);






    pi.pPortName = tempfileA;
    pi.pMonitorName = LocalPortA;
    pi.pDescription = winetest;
    pi.fPortType = PORT_TYPE_WRITE;

    SetLastError(0xdeadbeef);
    res = pAddPortExA(((void*)0), 2, (LPBYTE) &pi, LocalPortA);
    ok( !res && (GetLastError() == ERROR_INVALID_LEVEL),
        "got %u with %u (expected '0' with ERROR_INVALID_LEVEL)\n",
        res, GetLastError());
    if (res) DeletePortA(((void*)0), 0, tempfileA);



    SetLastError(0xdeadbeef);
    res = pAddPortExA(((void*)0), 0, (LPBYTE) &pi, LocalPortA);
    ok( !res && (GetLastError() == ERROR_INVALID_LEVEL),
        "got %u with %u (expected '0' with ERROR_INVALID_LEVEL)\n",
        res, GetLastError());

    SetLastError(0xdeadbeef);
    res = pAddPortExA(((void*)0), 3, (LPBYTE) &pi, LocalPortA);
    ok( !res && (GetLastError() == ERROR_INVALID_LEVEL),
        "got %u with %u (expected '0' with ERROR_INVALID_LEVEL)\n",
        res, GetLastError());



    DeletePortA(((void*)0), 0, tempfileA);

}

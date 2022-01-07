
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * pPortName; } ;
struct TYPE_3__ {int * pPortName; } ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ ERROR_CANCELLED ;
 scalar_t__ ERROR_INVALID_PRINTER_NAME ;
 scalar_t__ ERROR_UNKNOWN_PORT ;
 scalar_t__ GetLastError () ;
 int SetLastError (int) ;
 int * com_absent ;
 TYPE_2__* com_present ;
 int * does_not_existW ;
 int * emptyW ;
 scalar_t__ file_present ;
 int * lpt_absent ;
 TYPE_1__* lpt_present ;
 int ok (int,char*,scalar_t__,scalar_t__) ;
 scalar_t__ pConfigurePortUI (int *,int *,int *) ;
 int * portname_fileW ;
 int skip (char*) ;
 scalar_t__ winetest_interactive ;

__attribute__((used)) static void test_ConfigurePortUI(void)
{
    DWORD res;


    if (!pConfigurePortUI) {
        skip("ConfigurePortUI not found\n");
        return;
    }

    SetLastError(0xdeadbeef);
    res = pConfigurePortUI(((void*)0), ((void*)0), ((void*)0));
    ok( !res &&
        ((GetLastError() == ERROR_UNKNOWN_PORT) || (GetLastError() == ERROR_INVALID_PRINTER_NAME)),
        "got %d with %u (expected '0' with: ERROR_UNKNOWN_PORT or "
        "ERROR_INVALID_PRINTER_NAME)\n", res, GetLastError());

    SetLastError(0xdeadbeef);
    res = pConfigurePortUI(((void*)0), ((void*)0), emptyW);
    ok( !res &&
        ((GetLastError() == ERROR_UNKNOWN_PORT) || (GetLastError() == ERROR_INVALID_PRINTER_NAME)),
        "got %d with %u (expected '0' with: ERROR_UNKNOWN_PORT or "
        "ERROR_INVALID_PRINTER_NAME)\n", res, GetLastError());


    SetLastError(0xdeadbeef);
    res = pConfigurePortUI(((void*)0), ((void*)0), does_not_existW);
    ok( !res &&
        ((GetLastError() == ERROR_UNKNOWN_PORT) || (GetLastError() == ERROR_INVALID_PRINTER_NAME)),
        "got %d with %u (expected '0' with: ERROR_UNKNOWN_PORT or "
        "ERROR_INVALID_PRINTER_NAME)\n", res, GetLastError());

    if (winetest_interactive && lpt_present) {
        SetLastError(0xdeadbeef);
        res = pConfigurePortUI(((void*)0), ((void*)0), lpt_present->pPortName);
        ok( res ||
            (GetLastError() == ERROR_CANCELLED) || (GetLastError() == ERROR_ACCESS_DENIED),
            "got %d with %u (expected '!= 0' or '0' with: ERROR_CANCELLED or "
            "ERROR_ACCESS_DENIED)\n", res, GetLastError());
    }

    if (lpt_absent) {
        SetLastError(0xdeadbeef);
        res = pConfigurePortUI(((void*)0), ((void*)0), lpt_absent);
        ok( !res &&
            ((GetLastError() == ERROR_UNKNOWN_PORT) || (GetLastError() == ERROR_INVALID_PRINTER_NAME)),
            "got %d with %u (expected '0' with: ERROR_UNKNOWN_PORT or "
            "ERROR_INVALID_PRINTER_NAME)\n", res, GetLastError());
    }

    if (winetest_interactive && com_present) {
        SetLastError(0xdeadbeef);
        res = pConfigurePortUI(((void*)0), ((void*)0), com_present->pPortName);
        ok( res ||
            (GetLastError() == ERROR_CANCELLED) || (GetLastError() == ERROR_ACCESS_DENIED),
            "got %d with %u (expected '!= 0' or '0' with: ERROR_CANCELLED or "
            "ERROR_ACCESS_DENIED)\n", res, GetLastError());
    }

    if (com_absent) {
        SetLastError(0xdeadbeef);
        res = pConfigurePortUI(((void*)0), ((void*)0), com_absent);
        ok( !res &&
            ((GetLastError() == ERROR_UNKNOWN_PORT) || (GetLastError() == ERROR_INVALID_PRINTER_NAME)),
            "got %d with %u (expected '0' with: ERROR_UNKNOWN_PORT or "
            "ERROR_INVALID_PRINTER_NAME)\n", res, GetLastError());

    }

    if (winetest_interactive && file_present) {
        SetLastError(0xdeadbeef);
        res = pConfigurePortUI(((void*)0), ((void*)0), portname_fileW);
        ok( !res &&
            ((GetLastError() == ERROR_CANCELLED) || (GetLastError() == ERROR_ACCESS_DENIED)),
            "got %d with %u (expected '0' with: ERROR_CANCELLED or "
            "ERROR_ACCESS_DENIED)\n", res, GetLastError());
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPWSTR ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ ERROR_CANCELLED ;
 scalar_t__ ERROR_INVALID_PRINTER_NAME ;
 scalar_t__ ERROR_NOT_SUPPORTED ;
 scalar_t__ ERROR_UNKNOWN_PORT ;
 scalar_t__ GetLastError () ;
 int GlobalFree (int *) ;
 int SetLastError (int) ;
 int * does_not_existW ;
 int * emptyW ;
 int * localportW ;
 int ok (int,char*,scalar_t__,scalar_t__,...) ;
 scalar_t__ pAddPortUI (int *,int *,int *,int **) ;
 int skip (char*) ;
 scalar_t__ winetest_interactive ;

__attribute__((used)) static void test_AddPortUI(void)
{
    DWORD res;
    LPWSTR new_portname;


    if (!pAddPortUI) {
        skip("AddPortUI not found\n");
        return;
    }

    SetLastError(0xdeadbeef);
    res = pAddPortUI(((void*)0), ((void*)0), ((void*)0), ((void*)0));
    ok( !res &&
        ((GetLastError() == ERROR_UNKNOWN_PORT) || (GetLastError() == ERROR_INVALID_PRINTER_NAME)),
        "got %d with %u (expected '0' with: ERROR_UNKNOWN_PORT or "
        "ERROR_INVALID_PRINTER_NAME)\n", res, GetLastError());

    SetLastError(0xdeadbeef);
    res = pAddPortUI(((void*)0), ((void*)0), emptyW, ((void*)0));
    ok( !res &&
        ((GetLastError() == ERROR_UNKNOWN_PORT) || (GetLastError() == ERROR_INVALID_PRINTER_NAME)),
        "got %d with %u (expected '0' with: ERROR_UNKNOWN_PORT or "
        "ERROR_INVALID_PRINTER_NAME)\n", res, GetLastError());

    SetLastError(0xdeadbeef);
    res = pAddPortUI(((void*)0), ((void*)0), does_not_existW, ((void*)0));
    ok( !res &&
        ((GetLastError() == ERROR_UNKNOWN_PORT) || (GetLastError() == ERROR_INVALID_PRINTER_NAME)),
        "got %d with %u (expected '0' with: ERROR_UNKNOWN_PORT or "
        "ERROR_INVALID_PRINTER_NAME)\n", res, GetLastError());

    if (winetest_interactive) {
        SetLastError(0xdeadbeef);
        new_portname = ((void*)0);
        res = pAddPortUI(((void*)0), ((void*)0), localportW, &new_portname);
        ok( res ||
            (GetLastError() == ERROR_CANCELLED) ||
            (GetLastError() == ERROR_ACCESS_DENIED) ||
            (GetLastError() == ERROR_NOT_SUPPORTED),
            "got %d with %u and %p (expected '!= 0' or '0' with: "
            "ERROR_CANCELLED, ERROR_ACCESS_DENIED or ERROR_NOT_SUPPORTED)\n",
            res, GetLastError(), new_portname);

        GlobalFree(new_portname);
    }
}

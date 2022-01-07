
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;


 scalar_t__ ConfigurePortA (int *,int ,int *) ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_NOT_SUPPORTED ;
 scalar_t__ GetLastError () ;
 scalar_t__ RPC_X_NULL_REF_POINTER ;
 int SetLastError (int) ;
 int * does_not_exist ;
 int * empty ;
 scalar_t__ is_access_denied (scalar_t__,scalar_t__) ;
 scalar_t__ is_spooler_deactivated (scalar_t__,scalar_t__) ;
 int ok (int,char*,scalar_t__,scalar_t__) ;
 int * portname_com1 ;
 int * portname_file ;
 int * portname_lpt1 ;
 int trace (char*,int *,scalar_t__,scalar_t__) ;
 scalar_t__ winetest_interactive ;

__attribute__((used)) static void test_ConfigurePort(void)
{
    DWORD res;


    SetLastError(0xdeadbeef);
    res = ConfigurePortA(((void*)0), 0, ((void*)0));
    if (is_spooler_deactivated(res, GetLastError())) return;

    ok( !res && ((GetLastError() == RPC_X_NULL_REF_POINTER) ||
                 (GetLastError() == ERROR_INVALID_PARAMETER)),
        "returned %d with %d (expected '0' with ERROR_NOT_SUPPORTED or "
        "ERROR_INVALID_PARAMETER)\n", res, GetLastError());

    SetLastError(0xdeadbeef);
    res = ConfigurePortA(((void*)0), 0, empty);

    if (is_access_denied(res, GetLastError())) return;


    ok( !res && ((GetLastError() == ERROR_NOT_SUPPORTED) ||
                 (GetLastError() == ERROR_INVALID_PARAMETER)),
        "returned %d with %d (expected '0' with ERROR_NOT_SUPPORTED or "
        "ERROR_INVALID_PARAMETER)\n", res, GetLastError());


    SetLastError(0xdeadbeef);
    res = ConfigurePortA(((void*)0), 0, does_not_exist);

    ok( !res && ((GetLastError() == ERROR_NOT_SUPPORTED) ||
                 (GetLastError() == ERROR_INVALID_PARAMETER)),
        "returned %d with %d (expected '0' with ERROR_NOT_SUPPORTED or "
        "ERROR_INVALID_PARAMETER)\n", res, GetLastError());
    if (winetest_interactive > 0) {
        SetLastError(0xdeadbeef);
        res = ConfigurePortA(((void*)0), 0, portname_com1);
        trace("'%s' returned %d with %d\n", portname_com1, res, GetLastError());

        SetLastError(0xdeadbeef);
        res = ConfigurePortA(((void*)0), 0, portname_lpt1);
        trace("'%s' returned %d with %d\n", portname_lpt1, res, GetLastError());

        SetLastError(0xdeadbeef);
        res = ConfigurePortA(((void*)0), 0, portname_file);
        trace("'%s' returned %d with %d\n", portname_file, res, GetLastError());
    }
}

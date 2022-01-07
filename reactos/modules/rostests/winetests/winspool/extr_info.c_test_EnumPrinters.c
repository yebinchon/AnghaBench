
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ EnumPrintersA (int ,int *,int,int *,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ EnumPrintersW (int ,int *,int,int *,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ GetLastError () ;
 int PRINTER_ENUM_LOCAL ;
 scalar_t__ S_OK ;
 int SetLastError (int) ;
 scalar_t__ is_spooler_deactivated (scalar_t__,scalar_t__) ;
 int ok (int,char*,...) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_EnumPrinters(void)
{
    DWORD neededA, neededW, num;
    DWORD ret;

    SetLastError(0xdeadbeef);
    neededA = -1;
    ret = EnumPrintersA(PRINTER_ENUM_LOCAL, ((void*)0), 2, ((void*)0), 0, &neededA, &num);
    if (is_spooler_deactivated(ret, GetLastError())) return;
    if (!ret)
    {

        ok(GetLastError() == ERROR_INSUFFICIENT_BUFFER, "gle %d\n", GetLastError());
        ok(neededA > 0, "Expected neededA to show the number of needed bytes\n");
    }
    else
    {

        ok(GetLastError() == S_OK, "gle %d\n", GetLastError());
        ok(neededA == 0, "Expected neededA to be zero\n");
    }
    ok(num == 0, "num %d\n", num);

    SetLastError(0xdeadbeef);
    neededW = -1;
    ret = EnumPrintersW(PRINTER_ENUM_LOCAL, ((void*)0), 2, ((void*)0), 0, &neededW, &num);

    if (!ret && (GetLastError() == ERROR_CALL_NOT_IMPLEMENTED))
    {
        win_skip("EnumPrintersW is not implemented\n");
        return;
    }

    if (!ret)
    {

        ok(GetLastError() == ERROR_INSUFFICIENT_BUFFER, "gle %d\n", GetLastError());
        ok(neededW > 0, "Expected neededW to show the number of needed bytes\n");
    }
    else
    {

        ok(GetLastError() == S_OK, "gle %d\n", GetLastError());
        ok(neededW == 0, "Expected neededW to be zero\n");
    }
    ok(num == 0, "num %d\n", num);



    ok(neededA == neededW, "neededA %d neededW %d\n", neededA, neededW);
}

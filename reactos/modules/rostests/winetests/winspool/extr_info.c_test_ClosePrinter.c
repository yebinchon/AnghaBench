
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* HANDLE ;
typedef int BOOL ;


 int ClosePrinter (void*) ;
 scalar_t__ ERROR_INVALID_HANDLE ;
 scalar_t__ GetLastError () ;
 int OpenPrinterA (int ,void**,int *) ;
 int SetLastError (int) ;
 int default_printer ;
 scalar_t__ is_spooler_deactivated (int,scalar_t__) ;
 int ok (int,char*,int,scalar_t__) ;

__attribute__((used)) static void test_ClosePrinter(void)
{
    HANDLE printer = 0;
    BOOL res;


    SetLastError(0xdeadbeef);
    res = ClosePrinter(((void*)0));
    ok(!res && (GetLastError() == ERROR_INVALID_HANDLE),
        "got %d with %d (expected FALSE with ERROR_INVALID_HANDLE)\n",
        res, GetLastError());


    SetLastError(0xdeadbeef);
    res = ClosePrinter( (void *) -1);
    if (is_spooler_deactivated(res, GetLastError())) return;
    ok(!res && (GetLastError() == ERROR_INVALID_HANDLE),
        "got %d with %d (expected FALSE with ERROR_INVALID_HANDLE)\n",
         res, GetLastError());



    SetLastError(0xdeadbeef);
    res = OpenPrinterA(default_printer, &printer, ((void*)0));
    if (is_spooler_deactivated(res, GetLastError())) return;
    if (res)
    {
        SetLastError(0xdeadbeef);
        res = ClosePrinter(printer);
        ok(res, "got %d with %d (expected TRUE)\n", res, GetLastError());



        SetLastError(0xdeadbeef);
        res = ClosePrinter(printer);
        ok(!res && (GetLastError() == ERROR_INVALID_HANDLE),
            "got %d with %d (expected FALSE with ERROR_INVALID_HANDLE)\n",
            res, GetLastError());

    }
}

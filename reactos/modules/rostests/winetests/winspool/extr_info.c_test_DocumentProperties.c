
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;
typedef scalar_t__ HANDLE ;
typedef int DEVMODEA ;


 int ClosePrinter (scalar_t__) ;
 int DM_OUT_BUFFER ;
 int DocumentPropertiesA (int ,scalar_t__,char*,int *,int *,int ) ;
 int GetLastError () ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int IDOK ;
 int OpenPrinterA (int ,scalar_t__*,int *) ;
 int SetLastError (int) ;
 int default_printer ;
 int ok (int,char*,int) ;
 int skip (char*,...) ;
 int test_DEVMODEA (int *,int,int ) ;
 int trace (char*,int) ;

__attribute__((used)) static void test_DocumentProperties(void)
{
    HANDLE hprn;
    LONG dm_size, ret;
    DEVMODEA *dm;
    char empty_str[] = "";

    if (!default_printer)
    {
        skip("There is no default printer installed\n");
        return;
    }

    hprn = 0;
    ret = OpenPrinterA(default_printer, &hprn, ((void*)0));
    if (!ret)
    {
        skip("Unable to open the default printer (%s)\n", default_printer);
        return;
    }
    ok(hprn != 0, "wrong hprn %p\n", hprn);

    dm_size = DocumentPropertiesA(0, hprn, ((void*)0), ((void*)0), ((void*)0), 0);
    trace("DEVMODEA required size %d\n", dm_size);
    ok(dm_size >= sizeof(DEVMODEA), "unexpected DocumentPropertiesA ret value %d\n", dm_size);

    dm = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, dm_size);

    ret = DocumentPropertiesA(0, hprn, ((void*)0), dm, dm, DM_OUT_BUFFER);
    ok(ret == IDOK, "DocumentPropertiesA ret value %d != expected IDOK\n", ret);

    ret = DocumentPropertiesA(0, hprn, empty_str, dm, dm, DM_OUT_BUFFER);
    ok(ret == IDOK, "DocumentPropertiesA ret value %d != expected IDOK\n", ret);

    test_DEVMODEA(dm, dm_size, default_printer);

    HeapFree(GetProcessHeap(), 0, dm);

    SetLastError(0xdeadbeef);
    ret = ClosePrinter(hprn);
    ok(ret, "ClosePrinter error %d\n", GetLastError());
}

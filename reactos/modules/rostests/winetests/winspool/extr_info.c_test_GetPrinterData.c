
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef int WCHAR ;
typedef int * LPBYTE ;
typedef int HANDLE ;
typedef int DWORD ;
typedef scalar_t__ CHAR ;


 int ClosePrinter (int ) ;
 int ERROR_MORE_DATA ;
 int GetLastError () ;
 int GetPrinterDataA (int ,int ,int*,int *,int,int*) ;
 int MAX_PATH ;
 int OpenPrinterA (int *,int *,int *) ;
 int REG_SZ ;
 int SetLastError (int) ;
 int defaultspooldirectory ;
 int lstrlenA (scalar_t__*) ;
 int memset (scalar_t__*,char,int) ;
 int ok (int,char*,int,...) ;
 int on_win9x ;
 int win_skip (char*,int ) ;

__attribute__((used)) static void test_GetPrinterData(void)
{
    HANDLE hprn = 0;
    DWORD res;
    DWORD type;
    CHAR buffer[MAX_PATH + 1];
    DWORD needed;
    DWORD len;



    SetLastError(0xdeadbeef);
    res = OpenPrinterA(((void*)0), &hprn, ((void*)0));
    if (!res)
    {

        if (!on_win9x)
            win_skip("Unable to open the printserver: %d\n", GetLastError());
        return;
    }

    memset(buffer, '#', sizeof(buffer));
    buffer[MAX_PATH] = 0;
    type = 0xdeadbeef;
    needed = 0xdeadbeef;
    SetLastError(0xdeadbeef);
    res = GetPrinterDataA(hprn, defaultspooldirectory, &type, (LPBYTE) buffer, sizeof(buffer), &needed);

    len = lstrlenA(buffer) + sizeof(CHAR);

    ok( !res && (type == REG_SZ) && ((needed == len) || (needed == (len * sizeof(WCHAR)))),
        "got %d, type %d, needed: %d and '%s' (expected ERROR_SUCCESS, REG_SZ and %d)\n",
        res, type, needed, buffer, len);

    needed = 0xdeadbeef;
    SetLastError(0xdeadbeef);
    res = GetPrinterDataA(hprn, defaultspooldirectory, ((void*)0), ((void*)0), 0, &needed);
    ok( (res == ERROR_MORE_DATA) && ((needed == len) || (needed == (len * sizeof(WCHAR)))),
        "got %d, needed: %d (expected ERROR_MORE_DATA and %d)\n", res, needed, len);



    SetLastError(0xdeadbeef);
    res = ClosePrinter(hprn);
    ok(res, "ClosePrinter error %d\n", GetLastError());
}

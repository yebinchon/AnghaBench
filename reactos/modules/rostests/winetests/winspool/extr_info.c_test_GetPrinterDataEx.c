
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
 int MAX_PATH ;
 int OpenPrinterA (int *,int *,int *) ;
 int REG_SZ ;
 int SetLastError (int) ;
 scalar_t__ broken (int) ;
 int defaultspooldirectory ;
 char* does_not_exist ;
 int lstrlenA (scalar_t__*) ;
 int memset (scalar_t__*,char,int) ;
 int ok (int,char*,int,...) ;
 int pGetPrinterDataExA (int ,char*,int ,int*,int *,int,int*) ;
 int win_skip (char*,...) ;

__attribute__((used)) static void test_GetPrinterDataEx(void)
{
    HANDLE hprn = 0;
    DWORD res;
    DWORD type;
    CHAR buffer[MAX_PATH + 1];
    DWORD needed;
    DWORD len;


    if (!pGetPrinterDataExA) {
        win_skip("GetPrinterDataEx not found\n");
        return;
    }



    SetLastError(0xdeadbeef);
    res = OpenPrinterA(((void*)0), &hprn, ((void*)0));
    if (!res)
    {
        win_skip("Unable to open the printserver: %d\n", GetLastError());
        return;
    }


    memset(buffer, '#', sizeof(buffer));
    buffer[MAX_PATH] = 0;
    type = 0xdeadbeef;
    needed = 0xdeadbeef;
    SetLastError(0xdeadbeef);
    res = pGetPrinterDataExA(hprn, ((void*)0), defaultspooldirectory, &type,
                             (LPBYTE) buffer, sizeof(buffer), &needed);

    len = lstrlenA(buffer) + sizeof(CHAR);

    ok( !res && (type == REG_SZ) && ((needed == len) || (needed == (len * sizeof(WCHAR)))),
        "got %d, type %d, needed: %d and '%s' (expected ERROR_SUCCESS, REG_SZ and %d)\n",
        res, type, needed, buffer, len);

    memset(buffer, '#', sizeof(buffer));
    buffer[MAX_PATH] = 0;
    type = 0xdeadbeef;
    needed = 0xdeadbeef;
    SetLastError(0xdeadbeef);
    res = pGetPrinterDataExA(hprn, "", defaultspooldirectory, &type,
                             (LPBYTE) buffer, sizeof(buffer), &needed);
    len = lstrlenA(buffer) + sizeof(CHAR);
    ok( !res && (type == REG_SZ) && ((needed == len) || (needed == (len * sizeof(WCHAR)))),
        "got %d, type %d, needed: %d and '%s' (expected ERROR_SUCCESS, REG_SZ and %d)\n",
        res, type, needed, buffer, len);

    memset(buffer, '#', sizeof(buffer));
    buffer[MAX_PATH] = 0;
    type = 0xdeadbeef;
    needed = 0xdeadbeef;
    SetLastError(0xdeadbeef);

    res = pGetPrinterDataExA(hprn, "PrinterDriverData", defaultspooldirectory,
                             &type, (LPBYTE) buffer, sizeof(buffer), &needed);
    len = lstrlenA(buffer) + sizeof(CHAR);
    ok( !res && (type == REG_SZ) && ((needed == len) || (needed == (len * sizeof(WCHAR)))),
        "got %d, type %d, needed: %d and '%s' (expected ERROR_SUCCESS, REG_SZ and %d)\n",
        res, type, needed, buffer, len);


    memset(buffer, '#', sizeof(buffer));
    buffer[MAX_PATH] = 0;
    type = 0xdeadbeef;
    needed = 0xdeadbeef;
    SetLastError(0xdeadbeef);
    res = pGetPrinterDataExA(hprn, does_not_exist, defaultspooldirectory, &type,
                             (LPBYTE) buffer, sizeof(buffer), &needed);
    len = lstrlenA(buffer) + sizeof(CHAR);
    ok( !res && (type == REG_SZ) && ((needed == len) || (needed == (len * sizeof(WCHAR)))),
        "got %d, type %d, needed: %d and '%s' (expected ERROR_SUCCESS, REG_SZ and %d)\n",
        res, type, needed, buffer, len);

    needed = 0xdeadbeef;
    SetLastError(0xdeadbeef);


    res = pGetPrinterDataExA(hprn, ((void*)0), defaultspooldirectory, ((void*)0), ((void*)0), 0, &needed);
    ok( ((res == ERROR_MORE_DATA) || broken(res == 0xdeadbeef)) &&
        ((needed == len) || (needed == (len * sizeof(WCHAR)))),
        "got %d, needed: %d (expected ERROR_MORE_DATA and %d)\n", res, needed, len);

    needed = 0xdeadbeef;
    SetLastError(0xdeaddead);
    res = pGetPrinterDataExA(hprn, ((void*)0), defaultspooldirectory, ((void*)0), ((void*)0), 0, &needed);
    ok( ((res == ERROR_MORE_DATA) || broken(res == 0xdeaddead)) &&
        ((needed == len) || (needed == (len * sizeof(WCHAR)))),
        "got %d, needed: %d (expected ERROR_MORE_DATA and %d)\n", res, needed, len);

    SetLastError(0xdeadbeef);
    res = ClosePrinter(hprn);
    ok(res, "ClosePrinter error %d\n", GetLastError());
}

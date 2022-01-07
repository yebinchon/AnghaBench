
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nameW ;
typedef int name ;
typedef int * LPWSTR ;
typedef int * LPSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int ERROR_BUFFER_OVERFLOW ;
 int ERROR_CALL_NOT_IMPLEMENTED ;
 int GetComputerNameA (int *,int*) ;
 int GetComputerNameW (int *,int*) ;
 int GetLastError () ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int MAX_COMPUTERNAME_LENGTH ;
 int SetLastError (int) ;
 int ok (int,char*,int,...) ;
 int strlen (int *) ;
 int trace (char*,int *) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_GetComputerName(void)
{
    DWORD size;
    BOOL ret;
    LPSTR name;
    LPWSTR nameW;
    DWORD error;
    int name_len;

    size = 0;
    ret = GetComputerNameA((LPSTR)0xdeadbeef, &size);
    error = GetLastError();
    ok(!ret && error == ERROR_BUFFER_OVERFLOW, "GetComputerNameA should have failed with ERROR_BUFFER_OVERFLOW instead of %d\n", error);


    if (size != 0)
    {
        size++;
        name = HeapAlloc(GetProcessHeap(), 0, size * sizeof(name[0]));
        ok(name != ((void*)0), "HeapAlloc failed with error %d\n", GetLastError());
        ret = GetComputerNameA(name, &size);
        ok(ret, "GetComputerNameA failed with error %d\n", GetLastError());
        HeapFree(GetProcessHeap(), 0, name);
    }

    size = MAX_COMPUTERNAME_LENGTH + 1;
    name = HeapAlloc(GetProcessHeap(), 0, size * sizeof(name[0]));
    ok(name != ((void*)0), "HeapAlloc failed with error %d\n", GetLastError());
    ret = GetComputerNameA(name, &size);
    ok(ret, "GetComputerNameA failed with error %d\n", GetLastError());
    trace("computer name is \"%s\"\n", name);
    name_len = strlen(name);
    ok(size == name_len, "size should be same as length, name_len=%d, size=%d\n", name_len, size);
    HeapFree(GetProcessHeap(), 0, name);

    size = 0;
    SetLastError(0xdeadbeef);
    ret = GetComputerNameW((LPWSTR)0xdeadbeef, &size);
    error = GetLastError();
    if (error == ERROR_CALL_NOT_IMPLEMENTED)
        win_skip("GetComputerNameW is not implemented\n");
    else
    {
        ok(!ret && error == ERROR_BUFFER_OVERFLOW, "GetComputerNameW should have failed with ERROR_BUFFER_OVERFLOW instead of %d\n", error);
        size++;
        nameW = HeapAlloc(GetProcessHeap(), 0, size * sizeof(nameW[0]));
        ok(nameW != ((void*)0), "HeapAlloc failed with error %d\n", GetLastError());
        ret = GetComputerNameW(nameW, &size);
        ok(ret, "GetComputerNameW failed with error %d\n", GetLastError());
        HeapFree(GetProcessHeap(), 0, nameW);
    }
}

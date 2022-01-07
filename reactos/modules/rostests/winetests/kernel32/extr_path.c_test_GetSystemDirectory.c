
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef char CHAR ;


 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ GetLastError () ;
 int GetSystemDirectoryA (char*,int) ;
 int MAX_PATH ;
 int SetLastError (int) ;
 int memset (char*,char,int) ;
 int ok (int,char*,int,scalar_t__,...) ;

__attribute__((used)) static void test_GetSystemDirectory(void)
{
    CHAR buffer[MAX_PATH + 4];
    DWORD res;
    DWORD total;

    SetLastError(0xdeadbeef);
    res = GetSystemDirectoryA(((void*)0), 0);

    ok(res > 0, "returned %d with %d (expected '>0')\n", res, GetLastError());

    total = res;


    if (0)
        GetSystemDirectoryA(((void*)0), total);

    SetLastError(0xdeadbeef);
    res = GetSystemDirectoryA(((void*)0), total-1);


    ok( (res == total) || (!res && (GetLastError() == ERROR_INVALID_PARAMETER)),
        "returned %d with %d (expected '%d' or: '0' with "
        "ERROR_INVALID_PARAMETER)\n", res, GetLastError(), total);

    if (total > MAX_PATH) return;

    buffer[0] = '\0';
    SetLastError(0xdeadbeef);
    res = GetSystemDirectoryA(buffer, total);

    ok( (res == (total-1)) && (buffer[0]),
        "returned %d with %d and '%s' (expected '%d' and a string)\n",
        res, GetLastError(), buffer, total-1);

    buffer[0] = '\0';
    SetLastError(0xdeadbeef);
    res = GetSystemDirectoryA(buffer, total + 1);

    ok( (res == (total-1)) && (buffer[0]),
        "returned %d with %d and '%s' (expected '%d' and a string)\n",
        res, GetLastError(), buffer, total-1);

    memset(buffer, '#', total + 1);
    buffer[total + 2] = '\0';
    SetLastError(0xdeadbeef);
    res = GetSystemDirectoryA(buffer, total-1);

    ok( res == total, "returned %d with %d and '%s' (expected '%d')\n",
        res, GetLastError(), buffer, total);

    memset(buffer, '#', total + 1);
    buffer[total + 2] = '\0';
    SetLastError(0xdeadbeef);
    res = GetSystemDirectoryA(buffer, total-2);

    ok( res == total, "returned %d with %d and '%s' (expected '%d')\n",
        res, GetLastError(), buffer, total);
}

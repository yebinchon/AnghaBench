
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwSize; int bVisible; } ;
typedef int * HANDLE ;
typedef TYPE_1__ CONSOLE_CURSOR_INFO ;
typedef int BOOL ;


 int ERROR_INVALID_HANDLE ;
 int GetConsoleCursorInfo (int *,TYPE_1__*) ;
 int GetLastError () ;
 int SetLastError (int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void testCursorInfo(HANDLE hCon)
{
    BOOL ret;
    CONSOLE_CURSOR_INFO info;

    SetLastError(0xdeadbeef);
    ret = GetConsoleCursorInfo(((void*)0), ((void*)0));
    ok(!ret, "Expected failure\n");
    ok(GetLastError() == ERROR_INVALID_HANDLE, "GetLastError: expecting %u got %u\n",
       ERROR_INVALID_HANDLE, GetLastError());

    SetLastError(0xdeadbeef);
    info.dwSize = -1;
    ret = GetConsoleCursorInfo(((void*)0), &info);
    ok(!ret, "Expected failure\n");
    ok(info.dwSize == -1, "Expected no change for dwSize\n");
    ok(GetLastError() == ERROR_INVALID_HANDLE, "GetLastError: expecting %u got %u\n",
       ERROR_INVALID_HANDLE, GetLastError());


    SetLastError(0xdeadbeef);
    ret = GetConsoleCursorInfo(hCon, &info);
    ok(ret, "Expected success\n");
    ok(info.dwSize == 25 ||
       info.dwSize == 12 ,
       "Expected 12 or 25, got %d\n", info.dwSize);
    ok(info.bVisible, "Expected the cursor to be visible\n");
    ok(GetLastError() == 0xdeadbeef, "GetLastError: expecting %u got %u\n",
       0xdeadbeef, GetLastError());


}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int EnumProcesses (int*,int,int*) ;
 int GetLastError () ;
 int SetLastError (int) ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_EnumProcesses(void)
{
    DWORD pid, ret, cbUsed = 0xdeadbeef;

    SetLastError(0xdeadbeef);
    ret = EnumProcesses(((void*)0), 0, &cbUsed);
    ok(ret == 1, "failed with %d\n", GetLastError());
    ok(cbUsed == 0, "cbUsed=%d\n", cbUsed);

    SetLastError(0xdeadbeef);
    ret = EnumProcesses(&pid, 4, &cbUsed);
    ok(ret == 1, "failed with %d\n", GetLastError());
    ok(cbUsed == 4, "cbUsed=%d\n", cbUsed);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG_PTR ;
typedef scalar_t__ HKL ;
typedef int BOOL ;


 scalar_t__ ERROR_NOACCESS ;
 scalar_t__ GetKeyboardLayout (int ) ;
 int GetKeyboardLayoutNameA (char*) ;
 int GetKeyboardLayoutNameW (int *) ;
 char* GetLastError () ;
 int KL_NAMELENGTH ;
 int SetLastError (int) ;
 int ok (int,char*,...) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void test_keyboard_layout_name(void)
{
    BOOL ret;
    char klid[KL_NAMELENGTH];

    if (0)
        ret = GetKeyboardLayoutNameA(((void*)0));

    SetLastError(0xdeadbeef);
    ret = GetKeyboardLayoutNameW(((void*)0));
    ok(!ret, "got %d\n", ret);
    ok(GetLastError() == ERROR_NOACCESS, "got %d\n", GetLastError());

    if (GetKeyboardLayout(0) != (HKL)(ULONG_PTR)0x04090409) return;

    klid[0] = 0;
    ret = GetKeyboardLayoutNameA(klid);
    ok(ret, "GetKeyboardLayoutNameA failed %u\n", GetLastError());
    ok(!strcmp(klid, "00000409"), "expected 00000409, got %s\n", klid);
}

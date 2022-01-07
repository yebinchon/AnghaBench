
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bufW ;
typedef int bufA ;
typedef char WCHAR ;


 scalar_t__ GetModuleFileNameA (void*,char*,int) ;
 scalar_t__ GetModuleFileNameW (void*,char*,int) ;
 int MAX_PATH ;
 scalar_t__ is_unicode_enabled ;
 int ok (int,char*) ;

__attribute__((used)) static void testGetModuleFileName_Wrong(void)
{
    char bufA[MAX_PATH];
    WCHAR bufW[MAX_PATH];


    if (is_unicode_enabled)
    {
        bufW[0] = '*';
        ok(GetModuleFileNameW((void*)0xffffffff, bufW, sizeof(bufW) / sizeof(WCHAR)) == 0, "Unexpected success in module handle\n");
        ok(bufW[0] == '*', "When failing, buffer shouldn't be written to\n");
    }

    bufA[0] = '*';
    ok(GetModuleFileNameA((void*)0xffffffff, bufA, sizeof(bufA)) == 0, "Unexpected success in module handle\n");
    ok(bufA[0] == '*', "When failing, buffer shouldn't be written to\n");
}

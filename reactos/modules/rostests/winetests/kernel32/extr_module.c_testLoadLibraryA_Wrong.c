
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMODULE ;


 scalar_t__ ERROR_MOD_NOT_FOUND ;
 int FreeLibrary (int ) ;
 scalar_t__ GetLastError () ;
 int LoadLibraryA (char*) ;
 int SetLastError (int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void testLoadLibraryA_Wrong(void)
{
    HMODULE hModule;


    SetLastError(0xdeadbeef);
    hModule = LoadLibraryA("non_ex_pv.dll");
    ok( !hModule, "non_ex_pv.dll should be not loadable\n");
    ok( GetLastError() == ERROR_MOD_NOT_FOUND, "Expected ERROR_MOD_NOT_FOUND, got %d\n", GetLastError() );


    FreeLibrary(hModule);
}

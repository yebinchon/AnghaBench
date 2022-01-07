
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HMODULE ;
typedef int * FARPROC ;


 int FreeLibrary (int *) ;
 int GetLastError () ;
 int * GetProcAddress (int *,char*) ;
 int * LoadLibraryA (char*) ;
 int SetLastError (int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void testLoadLibraryA(void)
{
    HMODULE hModule, hModule1;
    FARPROC fp;

    SetLastError(0xdeadbeef);
    hModule = LoadLibraryA("kernel32.dll");
    ok( hModule != ((void*)0), "kernel32.dll should be loadable\n");
    ok( GetLastError() == 0xdeadbeef, "GetLastError should be 0xdeadbeef but is %d\n", GetLastError());

    fp = GetProcAddress(hModule, "CreateFileA");
    ok( fp != ((void*)0), "CreateFileA should be there\n");
    ok( GetLastError() == 0xdeadbeef, "GetLastError should be 0xdeadbeef but is %d\n", GetLastError());

    SetLastError(0xdeadbeef);
    hModule1 = LoadLibraryA("kernel32   ");
    ok( hModule1 != ((void*)0), "\"kernel32   \" should be loadable\n" );
    ok( GetLastError() == 0xdeadbeef, "GetLastError should be 0xdeadbeef but is %d\n", GetLastError() );
    ok( hModule == hModule1, "Loaded wrong module\n" );
    FreeLibrary(hModule1);
    FreeLibrary(hModule);
}

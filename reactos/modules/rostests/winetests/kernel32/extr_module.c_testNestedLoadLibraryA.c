
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path2 ;
typedef int path1 ;
typedef int * HMODULE ;


 int FreeLibrary (int *) ;
 int * GetModuleHandleA (char const*) ;
 int GetWindowsDirectoryA (char*,int) ;
 int * LoadLibraryA (char*) ;
 int MAX_PATH ;
 int ok (int ,char*,...) ;
 int strcat (char*,char const*) ;

__attribute__((used)) static void testNestedLoadLibraryA(void)
{
    static const char dllname[] = "shell32.dll";
    char path1[MAX_PATH], path2[MAX_PATH];
    HMODULE hModule1, hModule2, hModule3;
    GetWindowsDirectoryA(path1, sizeof(path1));
    strcat(path1, "\\system\\");
    strcat(path1, dllname);
    hModule1 = LoadLibraryA(path1);
    if (!hModule1)
    {

        return;
    }

    GetWindowsDirectoryA(path2, sizeof(path2));
    strcat(path2, "\\system32\\");
    strcat(path2, dllname);
    hModule2 = LoadLibraryA(path2);
    ok(hModule2 != ((void*)0), "LoadLibrary(%s) failed\n", path2);





    hModule3 = LoadLibraryA(path1);
    ok(hModule3 != ((void*)0), "LoadLibrary(%s) failed\n", path1);


    ok(FreeLibrary(hModule3), "FreeLibrary() failed\n");
    ok(FreeLibrary(hModule2), "FreeLibrary() failed\n");
    ok(FreeLibrary(hModule1), "FreeLibrary() failed\n");
    ok(GetModuleHandleA(dllname) == ((void*)0), "%s was not fully unloaded\n", dllname);


    hModule1 = LoadLibraryA(path1);
    ok(hModule1 != ((void*)0), "LoadLibrary(%s) failed\n", path1);
    if (hModule1 != ((void*)0))
        ok(FreeLibrary(hModule1), "FreeLibrary() failed\n");
}

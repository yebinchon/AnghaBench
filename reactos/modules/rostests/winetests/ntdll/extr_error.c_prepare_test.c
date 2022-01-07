
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMODULE ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ GetProcAddress (int ,char*) ;
 int LoadLibraryA (char*) ;
 int TRUE ;
 void* pRtlNtStatusToDosError ;
 scalar_t__ strcmp (char*,char*) ;
 int strict ;
 int win_skip (char*) ;
 int winetest_get_mainargs (char***) ;

__attribute__((used)) static BOOL prepare_test(void)
{
    HMODULE ntdll;
    int argc;
    char** argv;

    ntdll = LoadLibraryA("ntdll.dll");
    pRtlNtStatusToDosError = (void*)GetProcAddress(ntdll, "RtlNtStatusToDosError");
    if (!pRtlNtStatusToDosError)
    {
        win_skip("RtlNtStatusToDosError is not available\n");
        return FALSE;
    }

    argc = winetest_get_mainargs(&argv);
    strict=(argc >= 3 && strcmp(argv[2],"strict")==0);
    return TRUE;
}

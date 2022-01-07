
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wszWinprintPath ;
typedef char const WCHAR ;
typedef int * PVOID ;
typedef int LPBYTE ;
typedef int HMODULE ;
typedef int DWORD ;


 int ERROR_MOD_NOT_FOUND ;
 int GetLastError () ;
 int GetPrintProcessorDirectoryW (int *,int *,int,int ,int,int *) ;
 int * GetProcAddress (int ,char const*) ;
 int LoadLibraryW (char const*) ;
 int MAX_PATH ;
 int skip (char*,char const*,...) ;
 int wcscat (char const*,char*) ;

PVOID
GetWinprintFunc(const char* FunctionName)
{
    DWORD cbNeeded;
    HMODULE hWinprint;
    PVOID pFunc;
    WCHAR wszWinprintPath[MAX_PATH];


    if (!GetPrintProcessorDirectoryW(((void*)0), ((void*)0), 1, (LPBYTE)wszWinprintPath, sizeof(wszWinprintPath), &cbNeeded))
    {
        skip("Could not determine the path to the Print Processor directory, last error is %lu!\n", GetLastError());
        return ((void*)0);
    }

    wcscat(wszWinprintPath, L"\\winprint.dll");


    hWinprint = LoadLibraryW(wszWinprintPath);
    if (!hWinprint)
    {
        if (GetLastError() != ERROR_MOD_NOT_FOUND)
        {
            skip("LoadLibraryW failed for %S with error %lu!\n", wszWinprintPath, GetLastError());
            return ((void*)0);
        }



        hWinprint = LoadLibraryW(L"localspl.dll");
        if (!hWinprint)
        {
            skip("LoadLibraryW failed for localspl.dll with error %lu!\n", GetLastError());
            return ((void*)0);
        }
    }


    pFunc = GetProcAddress(hWinprint, FunctionName);
    if (!pFunc)
    {
        skip("GetProcAddress failed for %s with error %lu!\n", FunctionName, GetLastError());
        return ((void*)0);
    }

    return pFunc;
}

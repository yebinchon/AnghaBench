
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PVOID ;
typedef int HMODULE ;


 int FALSE ;
 int GetLastError () ;
 int GetModuleHandleW (char*) ;
 int GetProcAddress (int ,char const*) ;
 int skip (char*,int ) ;

PVOID
GetSpoolssFunc(const char* FunctionName)
{
    HMODULE hSpoolss;


    hSpoolss = GetModuleHandleW(L"spoolss");
    if (!hSpoolss)
    {
        skip("GetModuleHandleW failed with error %u!\n", GetLastError());
        return FALSE;
    }

    return GetProcAddress(hSpoolss, FunctionName);
}

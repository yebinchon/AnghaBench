
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;
typedef int BOOL ;


 int DRIVER_NAME ;
 int FALSE ;
 int GetLastError () ;
 int RegisterDriver (int ,int ) ;
 int TRUE ;
 int wprintf (char*,int ,int ) ;

__attribute__((used)) static BOOL
Initialize(LPCWSTR lpDriverPath)
{
    if (!RegisterDriver(DRIVER_NAME, lpDriverPath))
    {
        wprintf(L"[%lu] Failed to install %s\n", GetLastError(), DRIVER_NAME);
        return FALSE;
    }

    return TRUE;
}

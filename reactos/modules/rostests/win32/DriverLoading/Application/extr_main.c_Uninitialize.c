
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;
typedef int BOOL ;


 int DRIVER_NAME ;
 int FALSE ;
 int GetLastError () ;
 int TRUE ;
 int UnregisterDriver (int ) ;
 int wprintf (char*,int ,int ) ;

__attribute__((used)) static BOOL
Uninitialize(LPCWSTR lpDriverPath)
{
    if (!UnregisterDriver(DRIVER_NAME))
    {
        wprintf(L"[%lu] Failed to unregister %s\n", GetLastError(), DRIVER_NAME);
        return FALSE;
    }

    return TRUE;
}

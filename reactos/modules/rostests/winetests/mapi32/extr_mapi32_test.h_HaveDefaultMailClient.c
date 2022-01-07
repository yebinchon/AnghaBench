
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HKEY ;
typedef int DWORD ;
typedef int Buffer ;
typedef int BYTE ;
typedef int BOOL ;


 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int HKEY_CURRENT_USER ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_QUERY_VALUE ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExA (int ,char*,int ,int ,int *) ;
 scalar_t__ RegQueryValueExA (int ,int *,int *,int*,int *,int*) ;
 int TRUE ;

__attribute__((used)) static BOOL HaveDefaultMailClient(void)
{
    HKEY Key;
    DWORD Type, Size;
    BYTE Buffer[64];
    BOOL HasHKCUKey;







    if (RegOpenKeyExA(HKEY_CURRENT_USER, "SOFTWARE\\Clients\\Mail", 0, KEY_QUERY_VALUE, &Key) == ERROR_SUCCESS)
    {
        Size = sizeof(Buffer);


        if (RegQueryValueExA(Key, ((void*)0), ((void*)0), &Type, Buffer, &Size) != ERROR_FILE_NOT_FOUND)
        {
            RegCloseKey(Key);
            return TRUE;
        }
        RegCloseKey(Key);
        HasHKCUKey = TRUE;
    }
    else
        HasHKCUKey = FALSE;

    if (RegOpenKeyExA(HKEY_LOCAL_MACHINE, "SOFTWARE\\Clients\\Mail", 0, KEY_QUERY_VALUE, &Key) == ERROR_SUCCESS)
    {
        Size = sizeof(Buffer);
        if (RegQueryValueExA(Key, ((void*)0), ((void*)0), &Type, Buffer, &Size) != ERROR_FILE_NOT_FOUND)
        {
            RegCloseKey(Key);
            return TRUE;
        }
        RegCloseKey(Key);
        return FALSE;
    }

    return ! HasHKCUKey;
}

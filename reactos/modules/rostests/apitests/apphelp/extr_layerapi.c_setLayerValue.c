
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LSTATUS ;
typedef int * HKEY ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CURRENT_USER ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_SET_VALUE ;
 int QueryFlag () ;
 int REG_SZ ;
 int RegCloseKey (int *) ;
 scalar_t__ RegCreateKeyExA (int ,char*,int ,int *,int ,int,int *,int **,int *) ;
 scalar_t__ RegDeleteValueA (int *,char const*) ;
 scalar_t__ RegSetValueExA (int *,char const*,int ,int ,int const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static BOOL setLayerValue(BOOL bMachine, const char* valueName, const char* value)
{
    HKEY key = ((void*)0);
    LSTATUS lstatus = RegCreateKeyExA(bMachine ? HKEY_LOCAL_MACHINE : HKEY_CURRENT_USER,
        "Software\\Microsoft\\Windows NT\\CurrentVersion\\AppCompatFlags\\Layers", 0, ((void*)0), 0, QueryFlag() | KEY_SET_VALUE, ((void*)0), &key, ((void*)0));
    if (lstatus == ERROR_SUCCESS)
    {
        if (value)
            lstatus = RegSetValueExA(key, valueName, 0, REG_SZ, (const BYTE*)value, (DWORD)strlen(value)+1);
        else
        {
            lstatus = RegDeleteValueA(key, valueName);
            lstatus = (lstatus == ERROR_FILE_NOT_FOUND ? ERROR_SUCCESS : lstatus);
        }
        RegCloseKey(key);
    }
    return lstatus == ERROR_SUCCESS;
}

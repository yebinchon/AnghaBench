
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int data ;
typedef scalar_t__ LSTATUS ;
typedef int LPBYTE ;
typedef int * HKEY ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CURRENT_USER ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_QUERY_VALUE ;
 int QueryFlag () ;
 scalar_t__ REG_SZ ;
 int RegCloseKey (int *) ;
 scalar_t__ RegCreateKeyExA (int ,char*,int ,int *,int ,int,int *,int **,int *) ;
 scalar_t__ RegQueryValueExA (int *,char const*,int *,scalar_t__*,int ,scalar_t__*) ;
 int strcmp (char*,char const*) ;
 int winetest_ok (int,char*,...) ;

__attribute__((used)) static void expect_LayerValue_imp(BOOL bMachine, const char* valueName, const char* value)
{
    HKEY key = ((void*)0);
    LSTATUS lstatus = RegCreateKeyExA(bMachine ? HKEY_LOCAL_MACHINE : HKEY_CURRENT_USER,
        "Software\\Microsoft\\Windows NT\\CurrentVersion\\AppCompatFlags\\Layers", 0, ((void*)0), 0, QueryFlag() | KEY_QUERY_VALUE, ((void*)0), &key, ((void*)0));
    winetest_ok(lstatus == ERROR_SUCCESS, "Expected to be able to open a registry key\n");
    if (lstatus == ERROR_SUCCESS)
    {
        char data[512] = { 0 };
        DWORD dwType = 0;
        DWORD dwDataLen = sizeof(data);
        lstatus = RegQueryValueExA(key, valueName, ((void*)0), &dwType, (LPBYTE)data, &dwDataLen);
        if (value)
        {
            winetest_ok(lstatus == ERROR_SUCCESS, "Expected to get a valid value, err: %u\n", lstatus);
            if (lstatus == ERROR_SUCCESS)
            {
                winetest_ok(dwType == REG_SZ, "Expected the type to be REG_SZ, was: %u\n", dwType);
                winetest_ok(!strcmp(data, value), "Expected the data to be: '%s', was: '%s'\n", value, data);
            }
        }
        else
        {
            winetest_ok(lstatus == ERROR_FILE_NOT_FOUND, "Expected not to find the value %s\n", valueName);
        }
        RegCloseKey(key);
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int data ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int REG_DWORD ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyA (int ,char const*,int *) ;
 scalar_t__ RegQueryValueExA (int ,char const*,int *,int*,void*,int*) ;
 int TRUE ;

__attribute__((used)) static BOOL get_reg_dword(HKEY base, const char *key_name, const char *value_name, DWORD *value)
{
    HKEY key;
    DWORD type, data, size = sizeof(data);
    BOOL ret = FALSE;

    if (RegOpenKeyA(base, key_name, &key) == ERROR_SUCCESS)
    {
        if (RegQueryValueExA(key, value_name, ((void*)0), &type, (void *)&data, &size) == ERROR_SUCCESS &&
            type == REG_DWORD)
        {
            *value = data;
            ret = TRUE;
        }
        RegCloseKey(key);
    }
    return ret;
}

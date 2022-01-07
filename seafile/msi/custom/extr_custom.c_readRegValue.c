
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPBYTE ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int KEY_READ ;
 scalar_t__ REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyEx (int ,char const*,long,int ,int *) ;
 scalar_t__ RegQueryValueEx (int ,char const*,int *,scalar_t__*,int *,scalar_t__*) ;
 int TRUE ;
 char* malloc (scalar_t__) ;

BOOL readRegValue(HKEY root, const char *subkey, const char *name, char **value)
{
    HKEY hKey;
    char *buf = ((void*)0);
    BOOL ret = FALSE;
    LONG result = RegOpenKeyEx(root,
                               subkey,
                               0L,

                               KEY_READ,
                               &hKey);
    if (result != ERROR_SUCCESS) {
        goto out;
    }

    DWORD len, type;
    result = RegQueryValueEx(hKey,
                             name,
                             ((void*)0),
                             &type,
                             ((void*)0),
                             &len);
    if (result != ERROR_SUCCESS || type != REG_SZ) {
        goto out;
    }

    buf = malloc (len + 1);
    buf[len] = 0;
    result = RegQueryValueEx(hKey,
                             name,
                             ((void*)0),
                             ((void*)0),
                             (LPBYTE) buf,
                             &len);
    if (result != ERROR_SUCCESS) {
        goto out;
    }

    *value = buf;
    ret = TRUE;

out:
    RegCloseKey(hKey);
    return ret;
}

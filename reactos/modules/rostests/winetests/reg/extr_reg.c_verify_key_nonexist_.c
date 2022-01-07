
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONG ;
typedef scalar_t__ HKEY ;


 scalar_t__ ERROR_FILE_NOT_FOUND ;
 int KEY_READ ;
 int RegCloseKey (scalar_t__) ;
 scalar_t__ RegOpenKeyExA (scalar_t__,char const*,int ,int ,scalar_t__*) ;
 int lok (int,char*,char const*,scalar_t__) ;

__attribute__((used)) static void verify_key_nonexist_(unsigned line, HKEY key_base, const char *subkey)
{
    HKEY hkey;
    LONG err;

    err = RegOpenKeyExA(key_base, subkey, 0, KEY_READ, &hkey);
    lok(err == ERROR_FILE_NOT_FOUND, "registry key '%s' shouldn't exist; got %d, expected 2\n",
        subkey, err);

    if (hkey)
        RegCloseKey(hkey);
}

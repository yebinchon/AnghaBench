
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONG ;
typedef scalar_t__ HKEY ;


 scalar_t__ ERROR_SUCCESS ;
 int KEY_READ ;
 int RegCloseKey (scalar_t__) ;
 scalar_t__ RegOpenKeyExA (scalar_t__,char const*,int ,int ,scalar_t__*) ;
 int lok (int,char*,scalar_t__) ;

__attribute__((used)) static void verify_key_(unsigned line, HKEY key_base, const char *subkey)
{
    HKEY hkey;
    LONG lr;

    lr = RegOpenKeyExA(key_base, subkey, 0, KEY_READ, &hkey);
    lok(lr == ERROR_SUCCESS, "RegOpenKeyExA failed: got %d\n", lr);

    if (hkey)
        RegCloseKey(hkey);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONG ;
typedef int HKEY ;


 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ RegQueryValueExA (int ,char const*,int *,int *,int *,int *) ;
 int lok (int,char*,char const*,scalar_t__) ;

__attribute__((used)) static void verify_reg_nonexist_(unsigned line, HKEY hkey, const char *value)
{
    LONG err;

    err = RegQueryValueExA(hkey, value, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    lok(err == ERROR_FILE_NOT_FOUND, "registry value '%s' shouldn't exist; got %d, expected 2\n",
        (value && *value) ? value : "(Default)", err);
}

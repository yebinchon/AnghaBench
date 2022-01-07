
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONG ;
typedef int HKEY ;


 scalar_t__ ERROR_SUCCESS ;
 int KEY_READ ;
 int KEY_WRITE ;
 int REG_OPTION_NON_VOLATILE ;
 scalar_t__ RegCreateKeyExA (int const,char const*,int ,int *,int ,int,int *,int *,int *) ;
 int lok (int,char*,scalar_t__) ;

__attribute__((used)) static void add_key_(unsigned line, const HKEY hkey, const char *path, HKEY *subkey)
{
    LONG lr;

    lr = RegCreateKeyExA(hkey, path, 0, ((void*)0), REG_OPTION_NON_VOLATILE,
                         KEY_READ|KEY_WRITE, ((void*)0), subkey, ((void*)0));
    lok(lr == ERROR_SUCCESS, "RegCreateKeyExA failed: %d\n", lr);
}

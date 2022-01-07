
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONG ;
typedef int HKEY ;


 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ RegQueryValueExA (int ,char const*,int *,int *,int *,int *) ;
 int lok (int,char*,char const*,scalar_t__) ;

__attribute__((used)) static void r_verify_reg_nonexist(unsigned line, HKEY key, const char *value_name)
{
    LONG lr;

    lr = RegQueryValueExA(key, value_name, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    lok(lr == ERROR_FILE_NOT_FOUND, "registry value '%s' shouldn't exist; got %d, expected 2\n",
       (value_name && *value_name) ? value_name : "(Default)", lr);
}

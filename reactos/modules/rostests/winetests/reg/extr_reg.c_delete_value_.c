
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONG ;
typedef int HKEY ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ RegDeleteValueA (int const,char const*) ;
 int lok (int,char*,scalar_t__) ;

__attribute__((used)) static void delete_value_(unsigned line, const HKEY hkey, const char *name)
{
    LONG err;

    err = RegDeleteValueA(hkey, name);
    lok(err == ERROR_SUCCESS, "RegDeleteValueA failed: %d\n", err);
}

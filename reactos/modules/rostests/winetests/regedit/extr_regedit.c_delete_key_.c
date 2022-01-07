
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONG ;
typedef int HKEY ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ RegDeleteKeyA (int const,char const*) ;
 int lok (int,char*,scalar_t__) ;

__attribute__((used)) static void delete_key_(unsigned line, const HKEY hkey, const char *path)
{
    if (path && *path)
    {
        LONG lr;

        lr = RegDeleteKeyA(hkey, path);
        lok(lr == ERROR_SUCCESS, "RegDeleteKeyA failed: %d\n", lr);
    }
}

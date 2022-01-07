
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef int DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int const KEY_READ ;
 scalar_t__ RegOpenKeyExA (int const,char const*,int ,int const,int *) ;
 int lok (int,char*,scalar_t__) ;

__attribute__((used)) static void open_key_(unsigned line, const HKEY base, const char *path, const DWORD sam, HKEY *hkey)
{
    LONG lr;

    lr = RegOpenKeyExA(base, path, 0, KEY_READ|sam, hkey);
    lok(lr == ERROR_SUCCESS, "RegOpenKeyExA failed: %d\n", lr);
}

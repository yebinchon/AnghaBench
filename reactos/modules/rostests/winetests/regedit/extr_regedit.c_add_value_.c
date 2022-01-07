
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BYTE ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ RegSetValueExA (int ,char const*,int ,int ,int const*,size_t) ;
 int lok (int,char*,scalar_t__) ;

__attribute__((used)) static void add_value_(unsigned line, HKEY hkey, const char *name, DWORD type,
                       const void *data, size_t size)
{
    LONG lr;

    lr = RegSetValueExA(hkey, name, 0, type, (const BYTE *)data, size);
    lok(lr == ERROR_SUCCESS, "RegSetValueExA failed: %d\n", lr);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ MsiGetPropertyA (int ,char const*,char*,int*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static BOOL check_prop_empty( MSIHANDLE hpkg, const char * prop)
{
    UINT r;
    DWORD sz;
    char buffer[2];

    sz = sizeof buffer;
    strcpy(buffer,"x");
    r = MsiGetPropertyA( hpkg, prop, buffer, &sz );
    return r == ERROR_SUCCESS && buffer[0] == 0 && sz == 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int UINT ;
typedef int HKEY ;
typedef scalar_t__ BOOL ;


 int RegCreateKeyW (int ,char const*,int *) ;
 int RegOpenKeyW (int ,char const*,int *) ;

__attribute__((used)) static UINT OpenMediaSubkey(HKEY rootkey, HKEY *key, BOOL create)
{
    UINT rc;
    static const WCHAR media[] = {'M','e','d','i','a',0};

    if (create)
        rc = RegCreateKeyW(rootkey, media, key);
    else
        rc = RegOpenKeyW(rootkey,media, key);

    return rc;
}

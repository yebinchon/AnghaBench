
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

__attribute__((used)) static UINT OpenNetworkSubkey(HKEY rootkey, HKEY *key, BOOL create)
{
    UINT rc;
    static const WCHAR net[] = {'N','e','t',0};

    if (create)
        rc = RegCreateKeyW(rootkey, net, key);
    else
        rc = RegOpenKeyW(rootkey, net, key);

    return rc;
}

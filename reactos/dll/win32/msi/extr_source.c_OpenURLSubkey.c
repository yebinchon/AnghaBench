
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char WCHAR ;
typedef int UINT ;
typedef int HKEY ;
typedef scalar_t__ BOOL ;


 int RegCreateKeyW (int ,unsigned char const*,int *) ;
 int RegOpenKeyW (int ,unsigned char const*,int *) ;

__attribute__((used)) static UINT OpenURLSubkey(HKEY rootkey, HKEY *key, BOOL create)
{
    UINT rc;
    static const WCHAR URL[] = {'U','R','L',0};

    if (create)
        rc = RegCreateKeyW(rootkey, URL, key);
    else
        rc = RegOpenKeyW(rootkey, URL, key);

    return rc;
}

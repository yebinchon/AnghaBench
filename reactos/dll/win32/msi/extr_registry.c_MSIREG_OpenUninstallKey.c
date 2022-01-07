
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum platform { ____Placeholder_platform } platform ;
typedef int WCHAR ;
typedef int UINT ;
typedef int HKEY ;
typedef scalar_t__ BOOL ;


 int HKEY_LOCAL_MACHINE ;
 int KEY_ALL_ACCESS ;
 int PLATFORM_INTEL ;
 int RegCreateKeyExW (int ,int *,int ,int *,int ,int ,int *,int *,int *) ;
 int RegOpenKeyExW (int ,int *,int ,int ,int *) ;
 int TRACE (char*,int ) ;
 int debugstr_w (int const*) ;
 scalar_t__ is_64bit ;
 int strcatW (int *,int const*) ;
 int strcpyW (int *,int ) ;
 int szUninstall ;
 int szUninstall_32node ;

UINT MSIREG_OpenUninstallKey(const WCHAR *product, enum platform platform, HKEY *key, BOOL create)
{
    WCHAR keypath[0x200];

    TRACE("%s\n", debugstr_w(product));

    if (is_64bit && platform == PLATFORM_INTEL)
    {
        strcpyW(keypath, szUninstall_32node);
        strcatW(keypath, product);
    }
    else
    {
        strcpyW(keypath, szUninstall);
        strcatW(keypath, product);
    }
    if (create) return RegCreateKeyExW(HKEY_LOCAL_MACHINE, keypath, 0, ((void*)0), 0, KEY_ALL_ACCESS, ((void*)0), key, ((void*)0));
    return RegOpenKeyExW(HKEY_LOCAL_MACHINE, keypath, 0, KEY_ALL_ACCESS, key);
}

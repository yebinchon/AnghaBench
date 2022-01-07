
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPBYTE ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef void* DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CURRENT_USER ;
 int KEY_READ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyEx (int ,int ,int ,int ,int *) ;
 scalar_t__ RegQueryValueEx (int ,int ,int *,void**,int ,void**) ;
 int SetDefaults () ;
 int _T (char*) ;
 void* post_solve_delay ;
 void* pre_solve_delay ;
 int registryPath ;
 void* size ;
 void* solve_delay ;

__attribute__((used)) static void ReadRegistry()
{
    LONG result;
    HKEY skey;
    DWORD valuetype, valuesize, val_size, val_presd, val_postsd, val_sd;

    SetDefaults();

    result = RegOpenKeyEx(HKEY_CURRENT_USER, registryPath, 0, KEY_READ, &skey);
    if(result != ERROR_SUCCESS)
        return;

    valuesize = sizeof(DWORD);

    result = RegQueryValueEx(skey, _T("size"), ((void*)0), &valuetype, (LPBYTE)&val_size, &valuesize);
    if(result == ERROR_SUCCESS)
        size = val_size;
    result = RegQueryValueEx(skey, _T("pre_solve_delay"), ((void*)0), &valuetype, (LPBYTE)&val_presd, &valuesize);
    if(result == ERROR_SUCCESS)
        pre_solve_delay = val_presd;
    result = RegQueryValueEx(skey, _T("post_solve_delay"), ((void*)0), &valuetype, (LPBYTE)&val_postsd, &valuesize);
    if(result == ERROR_SUCCESS)
        post_solve_delay = val_postsd;
    result = RegQueryValueEx(skey, _T("solve_delay"), ((void*)0), &valuetype, (LPBYTE)&val_sd, &valuesize);
    if(result == ERROR_SUCCESS)
        solve_delay = val_sd;

    RegCloseKey(skey);
}

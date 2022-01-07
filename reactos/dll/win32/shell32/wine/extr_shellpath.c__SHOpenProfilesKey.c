
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PHKEY ;
typedef int LONG ;
typedef int HRESULT ;
typedef int DWORD ;


 int HKEY_LOCAL_MACHINE ;
 int HRESULT_FROM_WIN32 (int ) ;
 int KEY_ALL_ACCESS ;
 int ProfileListW ;
 int RegCreateKeyExW (int ,int ,int ,int *,int ,int ,int *,int ,int *) ;

__attribute__((used)) static HRESULT _SHOpenProfilesKey(PHKEY pKey)
{
    LONG lRet;
    DWORD disp;

    lRet = RegCreateKeyExW(HKEY_LOCAL_MACHINE, ProfileListW, 0, ((void*)0), 0,
     KEY_ALL_ACCESS, ((void*)0), pKey, &disp);
    return HRESULT_FROM_WIN32(lRet);
}

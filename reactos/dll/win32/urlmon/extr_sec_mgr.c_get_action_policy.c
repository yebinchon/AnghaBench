
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int URLZONEREG ;
typedef int LONG ;
typedef int HRESULT ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BYTE ;


 int ERR (char*,int ) ;
 int ERROR_FILE_NOT_FOUND ;
 int ERROR_MORE_DATA ;
 int ERROR_SUCCESS ;
 int E_FAIL ;
 int E_INVALIDARG ;
 int E_UNEXPECTED ;
 scalar_t__ FAILED (int ) ;
 int HKEY_CURRENT_USER ;
 int HKEY_LOCAL_MACHINE ;
 int RegCloseKey (int ) ;
 int RegQueryValueExW (int ,char*,int *,int *,int *,int*) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;


 int URLPOLICY_DISALLOW ;



 int WARN (char*,int) ;
 int open_zone_key (int ,int,int *) ;
 int wsprintfW (char*,char const*,int) ;

__attribute__((used)) static HRESULT get_action_policy(DWORD zone, DWORD action, BYTE *policy, DWORD size, URLZONEREG zone_reg)
{
    HKEY parent_key;
    HKEY hkey;
    LONG res;
    HRESULT hres;

    switch(action) {
    case 131:
    case 132:
        *(DWORD*)policy = URLPOLICY_DISALLOW;
        return S_OK;
    }

    switch(zone_reg) {
    case 130:
    case 129:
        parent_key = HKEY_CURRENT_USER;
        break;
    case 128:
        parent_key = HKEY_LOCAL_MACHINE;
        break;
    default:
        WARN("Unknown URLZONEREG: %d\n", zone_reg);
        return E_FAIL;
    };

    hres = open_zone_key(parent_key, zone, &hkey);
    if(SUCCEEDED(hres)) {
        WCHAR action_str[16];
        DWORD len = size;

        static const WCHAR formatW[] = {'%','X',0};

        wsprintfW(action_str, formatW, action);

        res = RegQueryValueExW(hkey, action_str, ((void*)0), ((void*)0), policy, &len);
        if(res == ERROR_MORE_DATA) {
            hres = E_INVALIDARG;
        }else if(res == ERROR_FILE_NOT_FOUND) {
            hres = E_FAIL;
        }else if(res != ERROR_SUCCESS) {
            ERR("RegQueryValue failed: %d\n", res);
            hres = E_UNEXPECTED;
        }

        RegCloseKey(hkey);
    }

    if(FAILED(hres) && zone_reg == 130)
        return get_action_policy(zone, action, policy, size, 128);

    return hres;
}

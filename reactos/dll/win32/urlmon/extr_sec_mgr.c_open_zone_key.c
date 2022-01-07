
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int HRESULT ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ ERROR_SUCCESS ;
 int E_INVALIDARG ;
 scalar_t__ RegOpenKeyW (int ,char*,int *) ;
 int S_OK ;
 int WARN (char*) ;
 int wsprintfW (char*,char const*,int ,scalar_t__) ;
 int wszZonesKey ;

__attribute__((used)) static HRESULT open_zone_key(HKEY parent_key, DWORD zone, HKEY *hkey)
{
    static const WCHAR wszFormat[] = {'%','s','%','u',0};

    WCHAR key_name[ARRAY_SIZE(wszZonesKey) + 12];
    DWORD res;

    wsprintfW(key_name, wszFormat, wszZonesKey, zone);

    res = RegOpenKeyW(parent_key, key_name, hkey);

    if(res != ERROR_SUCCESS) {
        WARN("RegOpenKey failed\n");
        return E_INVALIDARG;
    }

    return S_OK;
}

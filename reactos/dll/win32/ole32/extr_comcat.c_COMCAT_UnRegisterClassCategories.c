
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__ ULONG ;
typedef int const* REFCLSID ;
typedef int LPCWSTR ;
typedef scalar_t__ HRESULT ;
typedef int HKEY ;
typedef int CATID ;


 int CHARS_IN_GUID ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ E_FAIL ;
 scalar_t__ E_POINTER ;
 scalar_t__ FAILED (scalar_t__) ;
 int HKEY_CLASSES_ROOT ;
 int KEY_READ ;
 int KEY_WRITE ;
 int RegCloseKey (int ) ;
 int RegDeleteKeyW (int ,char*) ;
 scalar_t__ S_OK ;
 scalar_t__ StringFromGUID2 (int const*,char*,int ) ;
 int lstrcpyW (char*,int ) ;
 scalar_t__ open_classes_key (int ,char*,int,int *) ;

__attribute__((used)) static HRESULT COMCAT_UnRegisterClassCategories(
    REFCLSID rclsid,
    LPCWSTR type,
    ULONG cCategories,
    const CATID *rgcatid)
{
    WCHAR keyname[68] = { 'C', 'L', 'S', 'I', 'D', '\\' };
    HRESULT res;
    HKEY type_key;

    if (cCategories && rgcatid == ((void*)0)) return E_POINTER;


    res = StringFromGUID2(rclsid, keyname + 6, CHARS_IN_GUID);
    if (FAILED(res)) return res;
    keyname[44] = '\\';
    lstrcpyW(keyname + 45, type);


    res = open_classes_key(HKEY_CLASSES_ROOT, keyname, KEY_READ|KEY_WRITE, &type_key);
    if (res != ERROR_SUCCESS) return E_FAIL;

    for (; cCategories; --cCategories, ++rgcatid) {

 res = StringFromGUID2(rgcatid, keyname, CHARS_IN_GUID);
 if (FAILED(res)) continue;


 RegDeleteKeyW(type_key, keyname);
    }
    RegCloseKey(type_key);

    return S_OK;
}

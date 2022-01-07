
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ ULONG ;
typedef int const* REFCLSID ;
typedef int * LPCWSTR ;
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
 scalar_t__ S_OK ;
 scalar_t__ StringFromGUID2 (int const*,int *,int) ;
 int * clsid_keyname ;
 scalar_t__ create_classes_key (int ,int *,int,int *) ;

__attribute__((used)) static HRESULT COMCAT_RegisterClassCategories(
    REFCLSID rclsid,
    LPCWSTR type,
    ULONG cCategories,
    const CATID *rgcatid)
{
    WCHAR keyname[CHARS_IN_GUID];
    HRESULT res;
    HKEY clsid_key, class_key, type_key;

    if (cCategories && rgcatid == ((void*)0)) return E_POINTER;


    res = StringFromGUID2(rclsid, keyname, CHARS_IN_GUID);
    if (FAILED(res)) return res;


    res = create_classes_key(HKEY_CLASSES_ROOT, clsid_keyname, KEY_READ|KEY_WRITE, &clsid_key);
    if (res != ERROR_SUCCESS) return E_FAIL;


    res = create_classes_key(clsid_key, keyname, KEY_READ|KEY_WRITE, &class_key);
    if (res == ERROR_SUCCESS) {

 res = create_classes_key(class_key, type, KEY_READ|KEY_WRITE, &type_key);
 if (res == ERROR_SUCCESS) {
     for (; cCategories; --cCategories, ++rgcatid) {
  HKEY key;


  res = StringFromGUID2(rgcatid, keyname, CHARS_IN_GUID);
  if (FAILED(res)) continue;


  res = create_classes_key(type_key, keyname, KEY_READ|KEY_WRITE, &key);
  if (res == ERROR_SUCCESS) RegCloseKey(key);
     }
     res = S_OK;
 } else res = E_FAIL;
 RegCloseKey(class_key);
    } else res = E_FAIL;
    RegCloseKey(clsid_key);

    return res;
}

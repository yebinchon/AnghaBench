
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wszCLSIDInstance ;
typedef char WCHAR ;
typedef int REFIID ;
typedef int REFCLSID ;
typedef int LPVOID ;
typedef int LPBYTE ;
typedef scalar_t__ LONG ;
typedef int IPropertyBag ;
typedef int HRESULT ;
typedef int HKEY ;
typedef int DWORD ;
typedef int CLSID ;


 int CHARS_IN_GUID ;
 int CLASS_E_CLASSNOTAVAILABLE ;
 int CLSIDFromString (char*,int *) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,int ) ;
 int HKEY_CLASSES_ROOT ;
 int IID_IPropertyBag ;
 int IPropertyBag_Release (int *) ;
 int InstanceObjectFactory_Constructor (int *,int *,int ,int *) ;
 int KEY_READ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExW (int ,char const*,int ,int ,int *) ;
 scalar_t__ RegQueryValueExW (int ,char const*,int *,int*,int ,int*) ;
 int RegistryPropertyBag_Constructor (int ,int *,int *) ;
 int StringFromGUID2 (int ,char*,int) ;
 int TRACE (char*,...) ;
 int debugstr_guid (int ) ;
 int debugstr_w (char*) ;

HRESULT SHDOCVW_GetShellInstanceObjectClassObject(REFCLSID rclsid, REFIID riid,
    LPVOID *ppvClassObj)
{
    WCHAR wszInstanceKey[] = { 'C','L','S','I','D','\\','{','0','0','0','0','0','0','0','0','-',
        '0','0','0','0','-','0','0','0','0','-','0','0','0','0','-','0','0','0','0','0','0','0','0',
        '0','0','0','0','}','\\','I','n','s','t','a','n','c','e', 0 };
    static const WCHAR wszCLSID[] = { 'C','L','S','I','D',0 };
    static const WCHAR wszInitPropertyBag[] =
        { 'I','n','i','t','P','r','o','p','e','r','t','y','B','a','g',0 };
    WCHAR wszCLSIDInstance[CHARS_IN_GUID];
    CLSID clsidInstance;
    HKEY hInstanceKey, hInitPropertyBagKey;
    DWORD dwType, cbBytes = sizeof(wszCLSIDInstance);
    IPropertyBag *pInitPropertyBag;
    HRESULT hr;
    LONG res;

    TRACE("(rclsid=%s, riid=%s, ppvClassObject=%p)\n", debugstr_guid(rclsid), debugstr_guid(riid),
          ppvClassObj);


    if (!StringFromGUID2(rclsid, wszInstanceKey + 6, CHARS_IN_GUID))
        return CLASS_E_CLASSNOTAVAILABLE;
    wszInstanceKey[5+CHARS_IN_GUID] = '\\';
    if (ERROR_SUCCESS != RegOpenKeyExW(HKEY_CLASSES_ROOT, wszInstanceKey, 0, KEY_READ, &hInstanceKey))

        return CLASS_E_CLASSNOTAVAILABLE;

    if (ERROR_SUCCESS != RegQueryValueExW(hInstanceKey, wszCLSID, ((void*)0), &dwType, (LPBYTE)wszCLSIDInstance, &cbBytes) ||
        FAILED(CLSIDFromString(wszCLSIDInstance, &clsidInstance)))
    {

        FIXME("Failed to infer instance CLSID! %s\n", debugstr_w(wszCLSIDInstance));
        RegCloseKey(hInstanceKey);
        return CLASS_E_CLASSNOTAVAILABLE;
    }


    res = RegOpenKeyExW(hInstanceKey, wszInitPropertyBag, 0, KEY_READ, &hInitPropertyBagKey);
    RegCloseKey(hInstanceKey);
    if (res != ERROR_SUCCESS) {


        TRACE("No InitPropertyBag key found!\n");
        return CLASS_E_CLASSNOTAVAILABLE;
    }



    hr = RegistryPropertyBag_Constructor(hInitPropertyBagKey, &IID_IPropertyBag,
                                         (LPVOID*)&pInitPropertyBag);
    if (FAILED(hr)) {
        RegCloseKey(hInitPropertyBagKey);
        return hr;
    }



    hr = InstanceObjectFactory_Constructor(&clsidInstance, pInitPropertyBag, riid, ppvClassObj);
    IPropertyBag_Release(pInitPropertyBag);

    return hr;
}

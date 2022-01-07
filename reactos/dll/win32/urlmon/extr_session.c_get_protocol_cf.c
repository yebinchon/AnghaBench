
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wszProtocolsKey ;
typedef int str_clsid ;
typedef char WCHAR ;
typedef scalar_t__ LPWSTR ;
typedef char const* LPCWSTR ;
typedef int LPBYTE ;
typedef int IClassFactory ;
typedef int HRESULT ;
typedef int * HKEY ;
typedef int DWORD ;
typedef int CLSID ;


 scalar_t__ ARRAY_SIZE (char const*) ;
 int CLSCTX_INPROC_SERVER ;
 int CLSIDFromString (char*,int *) ;
 int CoGetClassObject (int *,int ,int *,int *,void**) ;
 int ERROR_SUCCESS ;
 scalar_t__ FAILED (int) ;
 int HKEY_CLASSES_ROOT ;
 int IID_IClassFactory ;
 int MK_E_SYNTAX ;
 int REG_SZ ;
 int RegCloseKey (int *) ;
 int RegOpenKeyW (int ,scalar_t__,int **) ;
 int RegQueryValueExW (int *,char const*,int *,int*,int ,int*) ;
 scalar_t__ SUCCEEDED (int) ;
 int S_OK ;
 int TRACE (char*) ;
 int WARN (char*,int) ;
 scalar_t__ heap_alloc (int) ;
 int heap_free (scalar_t__) ;
 int memcpy (scalar_t__,char const*,int) ;

__attribute__((used)) static HRESULT get_protocol_cf(LPCWSTR schema, DWORD schema_len, CLSID *pclsid, IClassFactory **ret)
{
    WCHAR str_clsid[64];
    HKEY hkey = ((void*)0);
    DWORD res, type, size;
    CLSID clsid;
    LPWSTR wszKey;
    HRESULT hres;

    static const WCHAR wszProtocolsKey[] =
        {'P','R','O','T','O','C','O','L','S','\\','H','a','n','d','l','e','r','\\'};
    static const WCHAR wszCLSID[] = {'C','L','S','I','D',0};

    wszKey = heap_alloc(sizeof(wszProtocolsKey)+(schema_len+1)*sizeof(WCHAR));
    memcpy(wszKey, wszProtocolsKey, sizeof(wszProtocolsKey));
    memcpy(wszKey + ARRAY_SIZE(wszProtocolsKey), schema, (schema_len+1)*sizeof(WCHAR));

    res = RegOpenKeyW(HKEY_CLASSES_ROOT, wszKey, &hkey);
    heap_free(wszKey);
    if(res != ERROR_SUCCESS) {
        TRACE("Could not open protocol handler key\n");
        return MK_E_SYNTAX;
    }

    size = sizeof(str_clsid);
    res = RegQueryValueExW(hkey, wszCLSID, ((void*)0), &type, (LPBYTE)str_clsid, &size);
    RegCloseKey(hkey);
    if(res != ERROR_SUCCESS || type != REG_SZ) {
        WARN("Could not get protocol CLSID res=%d\n", res);
        return MK_E_SYNTAX;
    }

    hres = CLSIDFromString(str_clsid, &clsid);
    if(FAILED(hres)) {
        WARN("CLSIDFromString failed: %08x\n", hres);
        return hres;
    }

    if(pclsid)
        *pclsid = clsid;

    if(!ret)
        return S_OK;

    hres = CoGetClassObject(&clsid, CLSCTX_INPROC_SERVER, ((void*)0), &IID_IClassFactory, (void**)ret);
    return SUCCEEDED(hres) ? S_OK : MK_E_SYNTAX;
}

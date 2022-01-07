
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf2 ;
typedef char WCHAR ;
typedef int LPCOLESTR ;
typedef int LONG ;
typedef int HRESULT ;
typedef int HKEY ;
typedef int CLSID ;


 int CHARS_IN_GUID ;
 int CO_E_CLASSSTRING ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HKEY_CLASSES_ROOT ;
 char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 int MAXIMUM_ALLOWED ;
 int RegCloseKey (int ) ;
 scalar_t__ RegQueryValueW (int ,int *,char*,int*) ;
 int S_OK ;
 int WARN (char*,int ) ;
 int debugstr_w (int ) ;
 scalar_t__ guid_from_string (char*,int *) ;
 int lstrcatW (char*,char const*) ;
 int lstrcpyW (char*,int ) ;
 int lstrlenW (int ) ;
 int memset (int *,int ,int) ;
 scalar_t__ open_classes_key (int ,char*,int ,int *) ;

__attribute__((used)) static HRESULT clsid_from_string_reg(LPCOLESTR progid, CLSID *clsid)
{
    static const WCHAR clsidW[] = { '\\','C','L','S','I','D',0 };
    WCHAR buf2[CHARS_IN_GUID];
    LONG buf2len = sizeof(buf2);
    HKEY xhkey;
    WCHAR *buf;

    memset(clsid, 0, sizeof(*clsid));
    buf = HeapAlloc( GetProcessHeap(),0,(lstrlenW(progid)+8) * sizeof(WCHAR) );
    if (!buf) return E_OUTOFMEMORY;
    lstrcpyW( buf, progid );
    lstrcatW( buf, clsidW );
    if (open_classes_key(HKEY_CLASSES_ROOT, buf, MAXIMUM_ALLOWED, &xhkey))
    {
        HeapFree(GetProcessHeap(),0,buf);
        WARN("couldn't open key for ProgID %s\n", debugstr_w(progid));
        return CO_E_CLASSSTRING;
    }
    HeapFree(GetProcessHeap(),0,buf);

    if (RegQueryValueW(xhkey,((void*)0),buf2,&buf2len))
    {
        RegCloseKey(xhkey);
        WARN("couldn't query clsid value for ProgID %s\n", debugstr_w(progid));
        return CO_E_CLASSSTRING;
    }
    RegCloseKey(xhkey);
    return guid_from_string(buf2, clsid) ? S_OK : CO_E_CLASSSTRING;
}

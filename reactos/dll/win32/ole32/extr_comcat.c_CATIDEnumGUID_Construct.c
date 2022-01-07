
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ IEnumGUID_iface; int key; } ;
typedef int REFCLSID ;
typedef char* LPCWSTR ;
typedef TYPE_1__ IEnumGUID ;
typedef int HRESULT ;
typedef TYPE_2__ CATID_IEnumGUIDImpl ;


 int CATIDEnumGUIDVtbl ;
 int CHARS_IN_GUID ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 int HKEY_CLASSES_ROOT ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int KEY_READ ;
 int S_OK ;
 int StringFromGUID2 (int ,char*,int) ;
 int lstrcatW (char*,char*) ;
 int lstrcpyW (char*,char const*) ;
 int open_classes_key (int ,char*,int ,int *) ;

__attribute__((used)) static HRESULT CATIDEnumGUID_Construct(REFCLSID rclsid, LPCWSTR postfix, IEnumGUID **ret)
{
    static const WCHAR prefixW[] = {'C','L','S','I','D','\\',0};
    WCHAR keyname[100], clsidW[CHARS_IN_GUID];
    CATID_IEnumGUIDImpl *This;

    *ret = ((void*)0);

    This = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(CATID_IEnumGUIDImpl));
    if (!This) return E_OUTOFMEMORY;

    StringFromGUID2(rclsid, clsidW, CHARS_IN_GUID);

    This->IEnumGUID_iface.lpVtbl = &CATIDEnumGUIDVtbl;
    This->ref = 1;
    lstrcpyW(keyname, prefixW);
    lstrcatW(keyname, clsidW);
    lstrcatW(keyname, postfix);

    open_classes_key(HKEY_CLASSES_ROOT, keyname, KEY_READ, &This->key);

    *ret = &This->IEnumGUID_iface;
    return S_OK;
}

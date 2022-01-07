
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct class_categories {int dummy; } ;
typedef char WCHAR ;
struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ IEnumGUID_iface; int key; struct class_categories* categories; } ;
typedef TYPE_1__ IEnumCLSID ;
typedef int HRESULT ;
typedef TYPE_2__ CLSID_IEnumGUIDImpl ;


 int CLSIDEnumGUIDVtbl ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 int HKEY_CLASSES_ROOT ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int KEY_READ ;
 int S_OK ;
 int open_classes_key (int ,char const*,int ,int *) ;

__attribute__((used)) static HRESULT CLSIDEnumGUID_Construct(struct class_categories *categories, IEnumCLSID **ret)
{
    static const WCHAR keyname[] = {'C','L','S','I','D',0};
    CLSID_IEnumGUIDImpl *This;

    *ret = ((void*)0);

    This = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(CLSID_IEnumGUIDImpl));
    if (!This) return E_OUTOFMEMORY;

    This->IEnumGUID_iface.lpVtbl = &CLSIDEnumGUIDVtbl;
    This->ref = 1;
    This->categories = categories;
    open_classes_key(HKEY_CLASSES_ROOT, keyname, KEY_READ, &This->key);

    *ret = &This->IEnumGUID_iface;

    return S_OK;
}

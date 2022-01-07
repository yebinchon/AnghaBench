
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ IEnumCATEGORYINFO_iface; int key; int lcid; } ;
typedef int LCID ;
typedef TYPE_1__ IEnumCATEGORYINFOImpl ;
typedef TYPE_2__ IEnumCATEGORYINFO ;
typedef int HRESULT ;


 int COMCAT_IEnumCATEGORYINFO_Vtbl ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 int HKEY_CLASSES_ROOT ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int KEY_READ ;
 int S_OK ;
 int open_classes_key (int ,char const*,int ,int *) ;

__attribute__((used)) static HRESULT EnumCATEGORYINFO_Construct(LCID lcid, IEnumCATEGORYINFO **ret)
{
    static const WCHAR keyname[] = {'C','o','m','p','o','n','e','n','t',' ','C','a','t','e','g','o','r','i','e','s',0};
    IEnumCATEGORYINFOImpl *This;

    *ret = ((void*)0);

    This = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(IEnumCATEGORYINFOImpl));
    if (!This) return E_OUTOFMEMORY;

    This->IEnumCATEGORYINFO_iface.lpVtbl = &COMCAT_IEnumCATEGORYINFO_Vtbl;
    This->ref = 1;
    This->lcid = lcid;
    open_classes_key(HKEY_CLASSES_ROOT, keyname, KEY_READ, &This->key);

    *ret = &This->IEnumCATEGORYINFO_iface;
    return S_OK;
}

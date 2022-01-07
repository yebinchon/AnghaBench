
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_8__ {void* itemDelimiter; void* itemName; int * pMarshal; scalar_t__ ref; TYPE_2__ IROTData_iface; TYPE_1__ IMoniker_iface; } ;
typedef int OLECHAR ;
typedef int const* LPCOLESTR ;
typedef TYPE_3__ ItemMonikerImpl ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int FIXME (char*) ;
 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,void*) ;
 int S_OK ;
 int TRACE (char*,TYPE_3__*,int ,int ) ;
 int VT_ItemMonikerImpl ;
 int VT_ROTDataImpl ;
 int debugstr_w (int const*) ;
 int lstrcpyW (void*,int const*) ;
 int lstrlenW (int const*) ;

__attribute__((used)) static HRESULT ItemMonikerImpl_Construct(ItemMonikerImpl* This, LPCOLESTR lpszDelim,LPCOLESTR lpszItem)
{

    int sizeStr1=lstrlenW(lpszItem), sizeStr2;
    static const OLECHAR emptystr[1];
    LPCOLESTR delim;

    TRACE("(%p,%s,%s)\n",This,debugstr_w(lpszDelim),debugstr_w(lpszItem));


    This->IMoniker_iface.lpVtbl = &VT_ItemMonikerImpl;
    This->IROTData_iface.lpVtbl = &VT_ROTDataImpl;
    This->ref = 0;
    This->pMarshal = ((void*)0);

    This->itemName=HeapAlloc(GetProcessHeap(),0,sizeof(WCHAR)*(sizeStr1+1));
    if (!This->itemName)
 return E_OUTOFMEMORY;
    lstrcpyW(This->itemName,lpszItem);

    if (!lpszDelim)
 FIXME("lpszDelim is NULL. Using empty string which is possibly wrong.\n");

    delim = lpszDelim ? lpszDelim : emptystr;

    sizeStr2=lstrlenW(delim);
    This->itemDelimiter=HeapAlloc(GetProcessHeap(),0,sizeof(WCHAR)*(sizeStr2+1));
    if (!This->itemDelimiter) {
 HeapFree(GetProcessHeap(),0,This->itemName);
 return E_OUTOFMEMORY;
    }
    lstrcpyW(This->itemDelimiter,delim);
    return S_OK;
}

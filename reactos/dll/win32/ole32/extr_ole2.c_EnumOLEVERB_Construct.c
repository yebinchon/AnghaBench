
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ IEnumOLEVERB_iface; int hkeyVerb; int index; } ;
typedef TYPE_1__ IEnumOLEVERB ;
typedef int HRESULT ;
typedef int HKEY ;
typedef TYPE_2__ EnumOLEVERB ;


 int E_OUTOFMEMORY ;
 int EnumOLEVERB_VTable ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int RegCloseKey (int ) ;
 int S_OK ;

__attribute__((used)) static HRESULT EnumOLEVERB_Construct(HKEY hkeyVerb, ULONG index, IEnumOLEVERB **ppenum)
{
    EnumOLEVERB *This = HeapAlloc(GetProcessHeap(), 0, sizeof(*This));
    if (!This)
    {
        RegCloseKey(hkeyVerb);
        return E_OUTOFMEMORY;
    }
    This->IEnumOLEVERB_iface.lpVtbl = &EnumOLEVERB_VTable;
    This->ref = 1;
    This->index = index;
    This->hkeyVerb = hkeyVerb;
    *ppenum = &This->IEnumOLEVERB_iface;
    return S_OK;
}

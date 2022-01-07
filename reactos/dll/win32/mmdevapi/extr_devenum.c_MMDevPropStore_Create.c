
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; scalar_t__ access; int * parent; TYPE_2__ IPropertyStore_iface; } ;
typedef int MMDevice ;
typedef TYPE_1__ MMDevPropStore ;
typedef TYPE_2__ IPropertyStore ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;


 int E_INVALIDARG ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int MMDevPropVtbl ;
 scalar_t__ STGM_READ ;
 scalar_t__ STGM_READWRITE ;
 scalar_t__ STGM_WRITE ;
 int S_OK ;
 int WARN (char*,scalar_t__) ;

__attribute__((used)) static HRESULT MMDevPropStore_Create(MMDevice *parent, DWORD access, IPropertyStore **ppv)
{
    MMDevPropStore *This;
    if (access != STGM_READ
        && access != STGM_WRITE
        && access != STGM_READWRITE)
    {
        WARN("Invalid access %08x\n", access);
        return E_INVALIDARG;
    }
    This = HeapAlloc(GetProcessHeap(), 0, sizeof(*This));
    *ppv = &This->IPropertyStore_iface;
    if (!This)
        return E_OUTOFMEMORY;
    This->IPropertyStore_iface.lpVtbl = &MMDevPropVtbl;
    This->ref = 1;
    This->parent = parent;
    This->access = access;
    return S_OK;
}

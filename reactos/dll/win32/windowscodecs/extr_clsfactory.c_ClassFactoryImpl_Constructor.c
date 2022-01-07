
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int classinfo ;
struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ IClassFactory_iface; int const* info; } ;
typedef int REFIID ;
typedef int * LPVOID ;
typedef int HRESULT ;
typedef TYPE_1__ ClassFactoryImpl ;


 int ClassFactoryImpl_Vtbl ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int IClassFactory_QueryInterface (TYPE_2__*,int ,int **) ;
 int IClassFactory_Release (TYPE_2__*) ;

__attribute__((used)) static HRESULT ClassFactoryImpl_Constructor(const classinfo *info, REFIID riid, LPVOID *ppv)
{
    ClassFactoryImpl *This;
    HRESULT ret;

    *ppv = ((void*)0);

    This = HeapAlloc(GetProcessHeap(), 0, sizeof(ClassFactoryImpl));
    if (!This) return E_OUTOFMEMORY;

    This->IClassFactory_iface.lpVtbl = &ClassFactoryImpl_Vtbl;
    This->ref = 1;
    This->info = info;

    ret = IClassFactory_QueryInterface(&This->IClassFactory_iface, riid, ppv);
    IClassFactory_Release(&This->IClassFactory_iface);

    return ret;
}

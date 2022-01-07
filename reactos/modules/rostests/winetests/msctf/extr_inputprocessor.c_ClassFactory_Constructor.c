
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ IClassFactory_iface; int ctor; } ;
typedef TYPE_1__* LPVOID ;
typedef int LPFNCONSTRUCTOR ;
typedef int HRESULT ;
typedef TYPE_2__ ClassFactory ;


 int ClassFactoryVtbl ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int S_OK ;
 int TS_refCount ;

__attribute__((used)) static HRESULT ClassFactory_Constructor(LPFNCONSTRUCTOR ctor, LPVOID *ppvOut)
{
    ClassFactory *This = HeapAlloc(GetProcessHeap(),0,sizeof(ClassFactory));
    This->IClassFactory_iface.lpVtbl = &ClassFactoryVtbl;
    This->ref = 1;
    This->ctor = ctor;
    *ppvOut = &This->IClassFactory_iface;
    TS_refCount++;
    return S_OK;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; int * pObject; TYPE_1__ IMoniker_iface; } ;
typedef TYPE_2__ PointerMonikerImpl ;
typedef int IUnknown ;


 int IUnknown_AddRef (int *) ;
 int TRACE (char*,TYPE_2__*) ;
 int VT_PointerMonikerImpl ;

__attribute__((used)) static void PointerMonikerImpl_Construct(PointerMonikerImpl* This, IUnknown *punk)
{
    TRACE("(%p)\n",This);


    This->IMoniker_iface.lpVtbl = &VT_PointerMonikerImpl;
    This->ref = 1;
    if (punk)
        IUnknown_AddRef(punk);
    This->pObject = punk;
}

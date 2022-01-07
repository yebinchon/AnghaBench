
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_8__ {int * pMarshal; scalar_t__ ref; TYPE_2__ IROTData_iface; TYPE_1__ IMoniker_iface; } ;
typedef int HRESULT ;
typedef TYPE_3__ AntiMonikerImpl ;


 int S_OK ;
 int TRACE (char*,TYPE_3__*) ;
 int VT_AntiMonikerImpl ;
 int VT_ROTDataImpl ;

__attribute__((used)) static HRESULT AntiMonikerImpl_Construct(AntiMonikerImpl* This)
{

    TRACE("(%p)\n",This);


    This->IMoniker_iface.lpVtbl = &VT_AntiMonikerImpl;
    This->IROTData_iface.lpVtbl = &VT_ROTDataImpl;
    This->ref = 0;
    This->pMarshal = ((void*)0);

    return S_OK;
}

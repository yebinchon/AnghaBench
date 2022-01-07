
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_8__ {int * pMarshal; int clsid; scalar_t__ ref; TYPE_2__ IROTData_iface; TYPE_1__ IMoniker_iface; } ;
typedef int * REFCLSID ;
typedef int HRESULT ;
typedef TYPE_3__ ClassMoniker ;


 int ClassMonikerVtbl ;
 int ROTDataVtbl ;
 int S_OK ;
 int TRACE (char*,TYPE_3__*,int ) ;
 int debugstr_guid (int *) ;

__attribute__((used)) static HRESULT ClassMoniker_Construct(ClassMoniker* This, REFCLSID rclsid)
{
    TRACE("(%p,%s)\n",This,debugstr_guid(rclsid));


    This->IMoniker_iface.lpVtbl = &ClassMonikerVtbl;
    This->IROTData_iface.lpVtbl = &ROTDataVtbl;
    This->ref = 0;
    This->clsid = *rclsid;
    This->pMarshal = ((void*)0);

    return S_OK;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tid_t ;
struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_8__ {int ref; int tid; int msiHandle; TYPE_2__ IProvideMultipleClassInfo_iface; TYPE_1__ IDispatch_iface; } ;
typedef int MSIHANDLE ;
typedef int HRESULT ;
typedef TYPE_3__ AutomationObject ;


 int AutomationObjectVtbl ;
 int ProvideMultipleClassInfoVtbl ;
 int S_OK ;
 int TRACE (char*,TYPE_3__*,int ,int ) ;
 int debugstr_guid (int ) ;
 int get_riid_from_tid (int ) ;

__attribute__((used)) static HRESULT init_automation_object(AutomationObject *This, MSIHANDLE msiHandle, tid_t tid)
{
    TRACE("(%p, %d, %s)\n", This, msiHandle, debugstr_guid(get_riid_from_tid(tid)));

    This->IDispatch_iface.lpVtbl = &AutomationObjectVtbl;
    This->IProvideMultipleClassInfo_iface.lpVtbl = &ProvideMultipleClassInfoVtbl;
    This->ref = 1;

    This->msiHandle = msiHandle;
    This->tid = tid;

    return S_OK;
}

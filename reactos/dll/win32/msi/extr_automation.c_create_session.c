
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int IDispatch_iface; } ;
struct TYPE_5__ {TYPE_4__ autoobj; int * installer; } ;
typedef TYPE_1__ SessionObject ;
typedef int MSIHANDLE ;
typedef int IDispatch ;
typedef scalar_t__ HRESULT ;


 scalar_t__ E_OUTOFMEMORY ;
 scalar_t__ S_OK ;
 int Session_tid ;
 scalar_t__ init_automation_object (TYPE_4__*,int ,int ) ;
 TYPE_1__* msi_alloc (int) ;
 int msi_free (TYPE_1__*) ;

HRESULT create_session(MSIHANDLE msiHandle, IDispatch *installer, IDispatch **disp)
{
    SessionObject *session;
    HRESULT hr;

    session = msi_alloc(sizeof(SessionObject));
    if (!session) return E_OUTOFMEMORY;

    hr = init_automation_object(&session->autoobj, msiHandle, Session_tid);
    if (hr != S_OK)
    {
        msi_free(session);
        return hr;
    }

    session->installer = installer;
    *disp = &session->autoobj.IDispatch_iface;

    return hr;
}

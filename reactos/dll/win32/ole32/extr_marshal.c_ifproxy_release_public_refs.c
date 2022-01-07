
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ipid; } ;
struct ifproxy {TYPE_3__* parent; int refs; TYPE_1__ stdobjref; } ;
struct TYPE_7__ {int remoting_mutex; int oid; int oxid; } ;
struct TYPE_6__ {scalar_t__ cPrivateRefs; int cPublicRefs; int ipid; } ;
typedef TYPE_2__ REMINTERFACEREF ;
typedef int LONG ;
typedef int IRemUnknown ;
typedef struct ifproxy* HRESULT ;


 int ERR (char*,struct ifproxy*) ;
 struct ifproxy* E_UNEXPECTED ;
 int INFINITE ;
 int IRemUnknown_Release (int *) ;
 struct ifproxy* IRemUnknown_RemRelease (int *,int,TYPE_2__*) ;
 int InterlockedExchangeAdd (int *,int ) ;
 struct ifproxy* RPC_E_DISCONNECTED ;
 int ReleaseMutex (int ) ;
 struct ifproxy* S_OK ;
 int TRACE (char*,int ) ;
 scalar_t__ WAIT_OBJECT_0 ;
 int WARN (char*,int ,int ) ;
 scalar_t__ WaitForSingleObject (int ,int ) ;
 struct ifproxy* proxy_manager_get_remunknown (TYPE_3__*,int **) ;
 int wine_dbgstr_longlong (int ) ;

__attribute__((used)) static HRESULT ifproxy_release_public_refs(struct ifproxy * This)
{
    HRESULT hr = S_OK;
    LONG public_refs;

    if (WAIT_OBJECT_0 != WaitForSingleObject(This->parent->remoting_mutex, INFINITE))
    {
        ERR("Wait failed for ifproxy %p\n", This);
        return E_UNEXPECTED;
    }

    public_refs = This->refs;
    if (public_refs > 0)
    {
        IRemUnknown *remunk = ((void*)0);

        TRACE("releasing %d refs\n", public_refs);

        hr = proxy_manager_get_remunknown(This->parent, &remunk);
        if (hr == S_OK)
        {
            REMINTERFACEREF rif;
            rif.ipid = This->stdobjref.ipid;
            rif.cPublicRefs = public_refs;
            rif.cPrivateRefs = 0;
            hr = IRemUnknown_RemRelease(remunk, 1, &rif);
            IRemUnknown_Release(remunk);
            if (hr == S_OK)
                InterlockedExchangeAdd((LONG *)&This->refs, -public_refs);
            else if (hr == RPC_E_DISCONNECTED)
                WARN("couldn't release references because object was "
                     "disconnected: oxid = %s, oid = %s\n",
                     wine_dbgstr_longlong(This->parent->oxid),
                     wine_dbgstr_longlong(This->parent->oid));
            else
                ERR("IRemUnknown_RemRelease failed with error 0x%08x\n", hr);
        }
    }
    ReleaseMutex(This->parent->remoting_mutex);

    return hr;
}

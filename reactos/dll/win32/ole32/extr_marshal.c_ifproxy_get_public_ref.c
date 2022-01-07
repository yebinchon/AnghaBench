
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ipid; } ;
struct ifproxy {scalar_t__ refs; TYPE_3__* parent; TYPE_1__ stdobjref; } ;
struct TYPE_7__ {int remoting_mutex; } ;
struct TYPE_6__ {scalar_t__ cPrivateRefs; int cPublicRefs; int ipid; } ;
typedef TYPE_2__ REMINTERFACEREF ;
typedef int LONG ;
typedef int IRemUnknown ;
typedef scalar_t__ HRESULT ;


 int ERR (char*,scalar_t__,...) ;
 scalar_t__ E_UNEXPECTED ;
 int INFINITE ;
 int IRemUnknown_Release (int *) ;
 scalar_t__ IRemUnknown_RemAddRef (int *,int,TYPE_2__*,scalar_t__*) ;
 int InterlockedExchangeAdd (int *,int ) ;
 int NORMALEXTREFS ;
 int ReleaseMutex (int ) ;
 scalar_t__ S_OK ;
 int TRACE (char*,struct ifproxy*) ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int ,int ) ;
 scalar_t__ proxy_manager_get_remunknown (TYPE_3__*,int **) ;

__attribute__((used)) static HRESULT ifproxy_get_public_ref(struct ifproxy * This)
{
    HRESULT hr = S_OK;

    if (WAIT_OBJECT_0 != WaitForSingleObject(This->parent->remoting_mutex, INFINITE))
    {
        ERR("Wait failed for ifproxy %p\n", This);
        return E_UNEXPECTED;
    }

    if (This->refs == 0)
    {
        IRemUnknown *remunk = ((void*)0);

        TRACE("getting public ref for ifproxy %p\n", This);

        hr = proxy_manager_get_remunknown(This->parent, &remunk);
        if (hr == S_OK)
        {
            HRESULT hrref = S_OK;
            REMINTERFACEREF rif;
            rif.ipid = This->stdobjref.ipid;
            rif.cPublicRefs = NORMALEXTREFS;
            rif.cPrivateRefs = 0;
            hr = IRemUnknown_RemAddRef(remunk, 1, &rif, &hrref);
            IRemUnknown_Release(remunk);
            if (hr == S_OK && hrref == S_OK)
                InterlockedExchangeAdd((LONG *)&This->refs, NORMALEXTREFS);
            else
                ERR("IRemUnknown_RemAddRef returned with 0x%08x, hrref = 0x%08x\n", hr, hrref);
        }
    }
    ReleaseMutex(This->parent->remoting_mutex);

    return hr;
}

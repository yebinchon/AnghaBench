
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int ipidRemUnknown; } ;
struct proxy_manager {int sorflags; int cs; int * remunk; TYPE_4__ oxid_info; int dest_context_data; int dest_context; int oxid; TYPE_1__* parent; } ;
struct apartment {scalar_t__ oxid; } ;
struct TYPE_6__ {int flags; int cPublicRefs; int ipid; scalar_t__ oid; int oxid; } ;
struct TYPE_5__ {scalar_t__ oxid; } ;
typedef TYPE_2__ STDOBJREF ;
typedef scalar_t__ OID ;
typedef int IRemUnknown ;
typedef scalar_t__ HRESULT ;
typedef int BOOL ;


 scalar_t__ CO_E_NOTINITIALIZED ;
 int EnterCriticalSection (int *) ;
 int IID_IRemUnknown ;
 int IRemUnknown_AddRef (int *) ;
 int LeaveCriticalSection (int *) ;
 int SORFP_NOLIFETIMEMGMT ;
 int SORF_NOPING ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 int TRACE (char*,int *,scalar_t__) ;
 struct apartment* apartment_get_current_or_mta () ;
 int apartment_release (struct apartment*) ;
 scalar_t__ unmarshal_object (TYPE_2__*,struct apartment*,int ,int ,int *,TYPE_4__*,void**) ;

__attribute__((used)) static HRESULT proxy_manager_get_remunknown(struct proxy_manager * This, IRemUnknown **remunk)
{
    HRESULT hr = S_OK;
    struct apartment *apt;
    BOOL called_in_original_apt;



    if (This->sorflags & SORFP_NOLIFETIMEMGMT)
        return S_FALSE;

    if (!(apt = apartment_get_current_or_mta()))
        return CO_E_NOTINITIALIZED;

    called_in_original_apt = This->parent && (This->parent->oxid == apt->oxid);

    EnterCriticalSection(&This->cs);



    if (This->remunk && called_in_original_apt)
    {

        *remunk = This->remunk;
        IRemUnknown_AddRef(*remunk);
    }
    else if (!This->parent)
    {

        *remunk = ((void*)0);
        hr = S_FALSE;
    }
    else
    {
        STDOBJREF stdobjref;


        stdobjref.flags = SORFP_NOLIFETIMEMGMT | SORF_NOPING;
        stdobjref.cPublicRefs = 1;

        stdobjref.oxid = This->oxid;

        stdobjref.oid = (OID)-1;
        stdobjref.ipid = This->oxid_info.ipidRemUnknown;


        hr = unmarshal_object(&stdobjref, apt, This->dest_context,
                              This->dest_context_data, &IID_IRemUnknown,
                              &This->oxid_info, (void**)remunk);
        if (hr == S_OK && called_in_original_apt)
        {
            This->remunk = *remunk;
            IRemUnknown_AddRef(This->remunk);
        }
    }
    LeaveCriticalSection(&This->cs);
    apartment_release(apt);

    TRACE("got IRemUnknown* pointer %p, hr = 0x%08x\n", *remunk, hr);

    return hr;
}

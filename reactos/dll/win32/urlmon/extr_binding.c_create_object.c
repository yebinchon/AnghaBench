
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* protocol; int clsid; int callback; int mime; } ;
struct TYPE_6__ {int IInternetProtocolEx_iface; } ;
typedef int * LPWSTR ;
typedef int HRESULT ;
typedef int CLSID ;
typedef TYPE_2__ Binding ;


 int BINDSTATUS_BEGINSYNCOPERATION ;
 int BINDSTATUS_CLASSIDAVAILABLE ;
 int BINDSTATUS_ENDSYNCOPERATION ;
 int CLSID_NULL ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,...) ;
 int IBindStatusCallback_OnProgress (int ,int ,int ,int ,int *) ;
 int IInternetProtocolEx_Terminate (int *,int ) ;
 int REGDB_E_CLASSNOTREG ;
 int create_mime_object (TYPE_2__*,int *,int *) ;
 int debugstr_w (int ) ;
 int * get_mime_clsid (int ,int *) ;
 int heap_free (int *) ;
 int stop_binding (TYPE_2__*,int ,int *) ;

__attribute__((used)) static void create_object(Binding *binding)
{
    LPWSTR clsid_str;
    CLSID clsid;
    HRESULT hres;

    if(!binding->mime) {
        FIXME("MIME not available\n");
        return;
    }

    if((clsid_str = get_mime_clsid(binding->mime, &clsid)))
        IBindStatusCallback_OnProgress(binding->callback, 0, 0, BINDSTATUS_CLASSIDAVAILABLE, clsid_str);

    IBindStatusCallback_OnProgress(binding->callback, 0, 0, BINDSTATUS_BEGINSYNCOPERATION, ((void*)0));

    if(clsid_str) {
        hres = create_mime_object(binding, &clsid, clsid_str);
        heap_free(clsid_str);
    }else {
        FIXME("Could not find object for MIME %s\n", debugstr_w(binding->mime));
        hres = REGDB_E_CLASSNOTREG;
    }

    IBindStatusCallback_OnProgress(binding->callback, 0, 0, BINDSTATUS_ENDSYNCOPERATION, ((void*)0));
    binding->clsid = CLSID_NULL;

    stop_binding(binding, hres, ((void*)0));
    if(FAILED(hres))
        IInternetProtocolEx_Terminate(&binding->protocol->IInternetProtocolEx_iface, 0);
}

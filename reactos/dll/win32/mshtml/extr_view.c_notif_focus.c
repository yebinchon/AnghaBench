
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int focus; int client; } ;
typedef int IOleControlSite ;
typedef TYPE_1__ HTMLDocumentObj ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int IID_IOleControlSite ;
 int IOleClientSite_QueryInterface (int ,int *,void**) ;
 int IOleControlSite_OnFocus (int *,int ) ;
 int IOleControlSite_Release (int *) ;

void notif_focus(HTMLDocumentObj *This)
{
    IOleControlSite *site;
    HRESULT hres;

    if(!This->client)
        return;

    hres = IOleClientSite_QueryInterface(This->client, &IID_IOleControlSite, (void**)&site);
    if(FAILED(hres))
        return;

    IOleControlSite_OnFocus(site, This->focus);
    IOleControlSite_Release(site);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int update; scalar_t__ client; scalar_t__ hostui; int hwnd; } ;
typedef int LRESULT ;
typedef int IOleCommandTarget ;
typedef TYPE_1__ HTMLDocumentObj ;
typedef int HRESULT ;


 int IDocHostUIHandler_UpdateUI (scalar_t__) ;
 int IID_IOleCommandTarget ;
 int IOleClientSite_QueryInterface (scalar_t__,int *,void**) ;
 int IOleCommandTarget_Exec (int *,int *,int ,int ,int *,int *) ;
 int IOleCommandTarget_Release (int *) ;
 int KillTimer (int ,int ) ;
 int OLECMDEXECOPT_DONTPROMPTUSER ;
 int OLECMDID_UPDATECOMMANDS ;
 scalar_t__ SUCCEEDED (int ) ;
 int TIMER_ID ;
 int TRACE (char*,TYPE_1__*,int) ;
 int UPDATE_UI ;
 int update_title (TYPE_1__*) ;

__attribute__((used)) static LRESULT on_timer(HTMLDocumentObj *This)
{
    TRACE("(%p) %x\n", This, This->update);

    KillTimer(This->hwnd, TIMER_ID);

    if(!This->update)
        return 0;

    if(This->update & UPDATE_UI) {
        if(This->hostui)
            IDocHostUIHandler_UpdateUI(This->hostui);

        if(This->client) {
            IOleCommandTarget *cmdtrg;
            HRESULT hres;

            hres = IOleClientSite_QueryInterface(This->client, &IID_IOleCommandTarget,
                                                 (void**)&cmdtrg);
            if(SUCCEEDED(hres)) {
                IOleCommandTarget_Exec(cmdtrg, ((void*)0), OLECMDID_UPDATECOMMANDS,
                                       OLECMDEXECOPT_DONTPROMPTUSER, ((void*)0), ((void*)0));
                IOleCommandTarget_Release(cmdtrg);
            }
        }
    }

    update_title(This);
    This->update = 0;
    return 0;
}

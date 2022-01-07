
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsISupports ;
typedef int nsIEditingSession ;
typedef int nsIControllerContext ;
struct TYPE_9__ {int * editor_controller; int * editor; TYPE_3__* doc; scalar_t__ webbrowser; } ;
struct TYPE_7__ {TYPE_1__* window; } ;
struct TYPE_8__ {TYPE_2__ basedoc; } ;
struct TYPE_6__ {int nswindow; } ;
typedef TYPE_4__ NSContainer ;


 int ERR (char*,int ) ;
 int IID_nsIController ;
 int IID_nsIControllerContext ;
 int IID_nsIEditingSession ;
 int NS_EDITORCONTROLLER_CONTRACTID ;
 scalar_t__ NS_FAILED (int ) ;
 scalar_t__ NS_SUCCEEDED (int ) ;
 int get_nsinterface (int *,int *,void**) ;
 int nsIComponentManager_CreateInstanceByContractID (int ,int ,int *,int *,void**) ;
 int nsIControllerContext_QueryInterface (int *,int *,void**) ;
 int nsIControllerContext_Release (int *) ;
 int nsIControllerContext_SetCommandContext (int *,int *) ;
 int nsIController_Release (int *) ;
 int nsIEditingSession_GetEditorForWindow (int *,int ,int **) ;
 int nsIEditingSession_Release (int *) ;
 int nsIEditor_Release (int *) ;
 int pCompMgr ;

void get_editor_controller(NSContainer *This)
{
    nsIEditingSession *editing_session = ((void*)0);
    nsIControllerContext *ctrlctx;
    nsresult nsres;

    if(This->editor) {
        nsIEditor_Release(This->editor);
        This->editor = ((void*)0);
    }

    if(This->editor_controller) {
        nsIController_Release(This->editor_controller);
        This->editor_controller = ((void*)0);
    }

    nsres = get_nsinterface((nsISupports*)This->webbrowser, &IID_nsIEditingSession,
            (void**)&editing_session);
    if(NS_FAILED(nsres)) {
        ERR("Could not get nsIEditingSession: %08x\n", nsres);
        return;
    }

    nsres = nsIEditingSession_GetEditorForWindow(editing_session,
            This->doc->basedoc.window->nswindow, &This->editor);
    nsIEditingSession_Release(editing_session);
    if(NS_FAILED(nsres)) {
        ERR("Could not get editor: %08x\n", nsres);
        return;
    }

    nsres = nsIComponentManager_CreateInstanceByContractID(pCompMgr,
            NS_EDITORCONTROLLER_CONTRACTID, ((void*)0), &IID_nsIControllerContext, (void**)&ctrlctx);
    if(NS_SUCCEEDED(nsres)) {
        nsres = nsIControllerContext_SetCommandContext(ctrlctx, (nsISupports *)This->editor);
        if(NS_FAILED(nsres))
            ERR("SetCommandContext failed: %08x\n", nsres);
        nsres = nsIControllerContext_QueryInterface(ctrlctx, &IID_nsIController,
                (void**)&This->editor_controller);
        nsIControllerContext_Release(ctrlctx);
        if(NS_FAILED(nsres))
            ERR("Could not get nsIController interface: %08x\n", nsres);
    }else {
        ERR("Could not create edit controller: %08x\n", nsres);
    }
}

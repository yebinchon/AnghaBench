
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsISupports ;
typedef int nsICommandParams ;
typedef int nsICommandManager ;
struct TYPE_10__ {TYPE_1__* window; TYPE_3__* doc_obj; } ;
struct TYPE_9__ {TYPE_2__* nscontainer; } ;
struct TYPE_8__ {scalar_t__ webbrowser; } ;
struct TYPE_7__ {int nswindow; } ;
typedef TYPE_4__ HTMLDocument ;


 int ERR (char*,int ,...) ;
 int IID_nsICommandManager ;
 scalar_t__ NS_FAILED (int ) ;
 int TRACE (char*,TYPE_4__*) ;
 int debugstr_a (char const*) ;
 int get_nsinterface (int *,int *,void**) ;
 int nsICommandManager_DoCommand (int *,char const*,int *,int ) ;
 int nsICommandManager_Release (int *) ;

void do_ns_command(HTMLDocument *This, const char *cmd, nsICommandParams *nsparam)
{
    nsICommandManager *cmdmgr;
    nsresult nsres;

    TRACE("(%p)\n", This);

    if(!This->doc_obj || !This->doc_obj->nscontainer)
        return;

    nsres = get_nsinterface((nsISupports*)This->doc_obj->nscontainer->webbrowser, &IID_nsICommandManager, (void**)&cmdmgr);
    if(NS_FAILED(nsres)) {
        ERR("Could not get nsICommandManager: %08x\n", nsres);
        return;
    }

    nsres = nsICommandManager_DoCommand(cmdmgr, cmd, nsparam, This->window->nswindow);
    if(NS_FAILED(nsres))
        ERR("DoCommand(%s) failed: %08x\n", debugstr_a(cmd), nsres);

    nsICommandManager_Release(cmdmgr);
}

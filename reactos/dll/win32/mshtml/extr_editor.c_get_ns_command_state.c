
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
typedef int nsICommandParams ;
typedef int nsICommandManager ;
struct TYPE_9__ {TYPE_2__* doc; scalar_t__ webbrowser; } ;
struct TYPE_8__ {int nswindow; } ;
struct TYPE_6__ {TYPE_3__* window; } ;
struct TYPE_7__ {TYPE_1__ basedoc; } ;
typedef TYPE_4__ NSContainer ;


 int ERR (char*,int ,...) ;
 int IID_nsICommandManager ;
 scalar_t__ NS_FAILED (int ) ;
 int debugstr_a (char const*) ;
 int get_nsinterface (int *,int *,void**) ;
 int nsICommandManager_GetCommandState (int *,char const*,int ,int *) ;
 int nsICommandManager_Release (int *) ;

__attribute__((used)) static nsresult get_ns_command_state(NSContainer *This, const char *cmd, nsICommandParams *nsparam)
{
    nsICommandManager *cmdmgr;
    nsresult nsres;

    nsres = get_nsinterface((nsISupports*)This->webbrowser, &IID_nsICommandManager, (void**)&cmdmgr);
    if(NS_FAILED(nsres)) {
        ERR("Could not get nsICommandManager: %08x\n", nsres);
        return nsres;
    }

    nsres = nsICommandManager_GetCommandState(cmdmgr, cmd, This->doc->basedoc.window->nswindow, nsparam);
    if(NS_FAILED(nsres))
        ERR("GetCommandState(%s) failed: %08x\n", debugstr_a(cmd), nsres);

    nsICommandManager_Release(cmdmgr);
    return nsres;
}

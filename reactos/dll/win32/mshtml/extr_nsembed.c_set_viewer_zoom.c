
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ nsresult ;
typedef int nsISupports ;
typedef int nsIDocShell ;
typedef int nsIContentViewer ;
struct TYPE_3__ {scalar_t__ navigation; } ;
typedef TYPE_1__ NSContainer ;


 int ERR (char*,scalar_t__) ;
 int IID_nsIDocShell ;
 scalar_t__ NS_FAILED (scalar_t__) ;
 scalar_t__ NS_OK ;
 int TRACE (char*,float) ;
 int assert (int) ;
 scalar_t__ get_nsinterface (int *,int *,void**) ;
 int nsIContentViewer_Release (int *) ;
 scalar_t__ nsIContentViewer_SetFullZoom (int *,float) ;
 scalar_t__ nsIDocShell_GetContentViewer (int *,int **) ;
 int nsIDocShell_Release (int *) ;

void set_viewer_zoom(NSContainer *nscontainer, float factor)
{
    nsIContentViewer *content_viewer;
    nsIDocShell *doc_shell;
    nsresult nsres;

    TRACE("Setting to %f\n", factor);

    nsres = get_nsinterface((nsISupports*)nscontainer->navigation, &IID_nsIDocShell, (void**)&doc_shell);
    assert(nsres == NS_OK);

    nsres = nsIDocShell_GetContentViewer(doc_shell, &content_viewer);
    assert(nsres == NS_OK && content_viewer);
    nsIDocShell_Release(doc_shell);

    nsres = nsIContentViewer_SetFullZoom(content_viewer, factor);
    if(NS_FAILED(nsres))
        ERR("SetFullZoom failed: %08x\n", nsres);

    nsIContentViewer_Release(content_viewer);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsISupports ;
typedef int nsIDocShell ;
typedef int nsIClipboardCommands ;
struct TYPE_5__ {TYPE_1__* window; } ;
struct TYPE_4__ {scalar_t__ nswindow; } ;
typedef TYPE_2__ HTMLDocument ;


 int ERR (char*) ;
 int IID_nsIClipboardCommands ;
 int IID_nsIDocShell ;
 scalar_t__ NS_FAILED (int ) ;
 int get_nsinterface (int *,int *,void**) ;
 int nsIDocShell_QueryInterface (int *,int *,void**) ;
 int nsIDocShell_Release (int *) ;

__attribute__((used)) static nsIClipboardCommands *get_clipboard_commands(HTMLDocument *doc)
{
    nsIClipboardCommands *clipboard_commands;
    nsIDocShell *doc_shell;
    nsresult nsres;

    nsres = get_nsinterface((nsISupports*)doc->window->nswindow, &IID_nsIDocShell, (void**)&doc_shell);
    if(NS_FAILED(nsres)) {
        ERR("Could not get nsIDocShell interface\n");
        return ((void*)0);
    }

    nsres = nsIDocShell_QueryInterface(doc_shell, &IID_nsIClipboardCommands, (void**)&clipboard_commands);
    nsIDocShell_Release(doc_shell);
    if(NS_FAILED(nsres)) {
        ERR("Could not get nsIClipboardCommands interface\n");
        return ((void*)0);
    }

    return clipboard_commands;
}

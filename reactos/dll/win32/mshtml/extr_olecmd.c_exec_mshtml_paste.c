
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsIClipboardCommands ;
typedef int VARIANT ;
struct TYPE_8__ {TYPE_1__* doc_obj; } ;
struct TYPE_7__ {scalar_t__ usermode; } ;
typedef TYPE_2__ HTMLDocument ;
typedef int HRESULT ;
typedef int DWORD ;


 scalar_t__ EDITMODE ;
 int ERR (char*,int ) ;
 int E_FAIL ;
 int E_UNEXPECTED ;
 scalar_t__ NS_FAILED (int ) ;
 int S_OK ;
 int TRACE (char*,TYPE_2__*,int ,int *,int *) ;
 int editor_exec_paste (TYPE_2__*,int ,int *,int *) ;
 int * get_clipboard_commands (TYPE_2__*) ;
 int nsIClipboardCommands_Paste (int *) ;
 int nsIClipboardCommands_Release (int *) ;

__attribute__((used)) static HRESULT exec_mshtml_paste(HTMLDocument *This, DWORD cmdexecopt, VARIANT *in, VARIANT *out)
{
    nsIClipboardCommands *clipboard_commands;
    nsresult nsres;

    TRACE("(%p)->(%08x %p %p)\n", This, cmdexecopt, in, out);

    if(This->doc_obj->usermode == EDITMODE)
        return editor_exec_paste(This, cmdexecopt, in, out);

    clipboard_commands = get_clipboard_commands(This);
    if(!clipboard_commands)
        return E_UNEXPECTED;

    nsres = nsIClipboardCommands_Paste(clipboard_commands);
    nsIClipboardCommands_Release(clipboard_commands);
    if(NS_FAILED(nsres)) {
        ERR("Paste failed: %08x\n", nsres);
        return E_FAIL;
    }

    return S_OK;
}

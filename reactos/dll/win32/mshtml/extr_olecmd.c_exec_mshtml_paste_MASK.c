#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsIClipboardCommands ;
typedef  int /*<<< orphan*/  VARIANT ;
struct TYPE_8__ {TYPE_1__* doc_obj; } ;
struct TYPE_7__ {scalar_t__ usermode; } ;
typedef  TYPE_2__ HTMLDocument ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ EDITMODE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_UNEXPECTED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC7(HTMLDocument *This, DWORD cmdexecopt, VARIANT *in, VARIANT *out)
{
    nsIClipboardCommands *clipboard_commands;
    nsresult nsres;

    FUNC2("(%p)->(%08x %p %p)\n", This, cmdexecopt, in, out);

    if(This->doc_obj->usermode == EDITMODE)
        return FUNC3(This, cmdexecopt, in, out);

    clipboard_commands = FUNC4(This);
    if(!clipboard_commands)
        return E_UNEXPECTED;

    nsres = FUNC5(clipboard_commands);
    FUNC6(clipboard_commands);
    if(FUNC1(nsres)) {
        FUNC0("Paste failed: %08x\n", nsres);
        return E_FAIL;
    }

    return S_OK;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsISupports ;
typedef  int /*<<< orphan*/  nsIEditingSession ;
typedef  int /*<<< orphan*/  nsIControllerContext ;
struct TYPE_9__ {int /*<<< orphan*/ * editor_controller; int /*<<< orphan*/ * editor; TYPE_3__* doc; scalar_t__ webbrowser; } ;
struct TYPE_7__ {TYPE_1__* window; } ;
struct TYPE_8__ {TYPE_2__ basedoc; } ;
struct TYPE_6__ {int /*<<< orphan*/  nswindow; } ;
typedef  TYPE_4__ NSContainer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_nsIController ; 
 int /*<<< orphan*/  IID_nsIControllerContext ; 
 int /*<<< orphan*/  IID_nsIEditingSession ; 
 int /*<<< orphan*/  NS_EDITORCONTROLLER_CONTRACTID ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pCompMgr ; 

void FUNC12(NSContainer *This)
{
    nsIEditingSession *editing_session = NULL;
    nsIControllerContext *ctrlctx;
    nsresult nsres;

    if(This->editor) {
        FUNC11(This->editor);
        This->editor = NULL;
    }

    if(This->editor_controller) {
        FUNC8(This->editor_controller);
        This->editor_controller = NULL;
    }

    nsres = FUNC3((nsISupports*)This->webbrowser, &IID_nsIEditingSession,
            (void**)&editing_session);
    if(FUNC1(nsres)) {
        FUNC0("Could not get nsIEditingSession: %08x\n", nsres);
        return;
    }

    nsres = FUNC9(editing_session,
            This->doc->basedoc.window->nswindow, &This->editor);
    FUNC10(editing_session);
    if(FUNC1(nsres)) {
        FUNC0("Could not get editor: %08x\n", nsres);
        return;
    }

    nsres = FUNC4(pCompMgr,
            NS_EDITORCONTROLLER_CONTRACTID, NULL, &IID_nsIControllerContext, (void**)&ctrlctx);
    if(FUNC2(nsres)) {
        nsres = FUNC7(ctrlctx, (nsISupports *)This->editor);
        if(FUNC1(nsres))
            FUNC0("SetCommandContext failed: %08x\n", nsres);
        nsres = FUNC5(ctrlctx, &IID_nsIController,
                (void**)&This->editor_controller);
        FUNC6(ctrlctx);
        if(FUNC1(nsres))
            FUNC0("Could not get nsIController interface: %08x\n", nsres);
    }else {
        FUNC0("Could not create edit controller: %08x\n", nsres);
    }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsIDOMEventTarget ;
struct TYPE_15__ {int /*<<< orphan*/  nsIDOMEventListener_iface; } ;
struct TYPE_13__ {int ref; TYPE_6__ load_listener; TYPE_6__ keypress_listener; TYPE_6__ focus_listener; TYPE_6__ blur_listener; TYPE_6__ htmlevent_listener; TYPE_4__* doc; } ;
typedef  TYPE_3__ nsDocumentEventListener ;
struct TYPE_12__ {TYPE_1__* window; } ;
struct TYPE_14__ {TYPE_2__ basedoc; TYPE_3__* nsevent_listener; } ;
struct TYPE_11__ {int /*<<< orphan*/  nswindow; } ;
typedef  TYPE_4__ HTMLDocumentNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IID_nsIDOMEventTarget ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  blurW ; 
 int /*<<< orphan*/  blur_vtbl ; 
 int /*<<< orphan*/  focusW ; 
 int /*<<< orphan*/  focus_vtbl ; 
 TYPE_3__* FUNC3 (int) ; 
 int /*<<< orphan*/  htmlevent_vtbl ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  keypressW ; 
 int /*<<< orphan*/  keypress_vtbl ; 
 int /*<<< orphan*/  loadW ; 
 int /*<<< orphan*/  load_vtbl ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 

void FUNC8(HTMLDocumentNode *doc)
{
    nsDocumentEventListener *listener;
    nsIDOMEventTarget *target;
    nsresult nsres;

    listener = FUNC3(sizeof(nsDocumentEventListener));
    if(!listener)
        return;

    FUNC2("%p %p\n", doc, listener);

    listener->ref = 1;
    listener->doc = doc;

    FUNC5(&listener->blur_listener,        listener, &blur_vtbl);
    FUNC5(&listener->focus_listener,       listener, &focus_vtbl);
    FUNC5(&listener->keypress_listener,    listener, &keypress_vtbl);
    FUNC5(&listener->load_listener,        listener, &load_vtbl);
    FUNC5(&listener->htmlevent_listener,   listener, &htmlevent_vtbl);

    doc->nsevent_listener = listener;

    nsres = FUNC7(doc->basedoc.window->nswindow, &IID_nsIDOMEventTarget, (void**)&target);
    if(FUNC1(nsres)) {
        FUNC0("Could not get nsIDOMEventTarget interface: %08x\n", nsres);
        return;
    }

    FUNC4(target, blurW,     &listener->blur_listener.nsIDOMEventListener_iface,     TRUE);
    FUNC4(target, focusW,    &listener->focus_listener.nsIDOMEventListener_iface,    TRUE);
    FUNC4(target, keypressW, &listener->keypress_listener.nsIDOMEventListener_iface, FALSE);
    FUNC4(target, loadW,     &listener->load_listener.nsIDOMEventListener_iface,     TRUE);

    FUNC6(target);
}
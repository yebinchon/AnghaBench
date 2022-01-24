#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsIDOMKeyEvent ;
typedef  int /*<<< orphan*/  nsIDOMEvent ;
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_4__ {int /*<<< orphan*/  nsnode; int /*<<< orphan*/  doc; } ;
struct TYPE_5__ {TYPE_1__ node; } ;
typedef  TYPE_2__ HTMLElement ;
typedef  int /*<<< orphan*/  HTMLDOMNode ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  EVENTID_HELP ; 
#define  EVENTID_KEYDOWN 129 
 int /*<<< orphan*/  IID_nsIDOMKeyEvent ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
#define  VK_F1 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

HRESULT FUNC7(HTMLDOMNode *iface, DWORD eid, nsIDOMEvent *event, BOOL *prevent_default)
{
    HTMLElement *This = FUNC3(iface);

    switch(eid) {
    case EVENTID_KEYDOWN: {
        nsIDOMKeyEvent *key_event;
        nsresult nsres;

        nsres = FUNC4(event, &IID_nsIDOMKeyEvent, (void**)&key_event);
        if(FUNC0(nsres)) {
            UINT32 code = 0;

            FUNC5(key_event, &code);

            switch(code) {
            case VK_F1: /* DOM_VK_F1 */
                FUNC1("F1 pressed\n");
                FUNC2(This->node.doc, EVENTID_HELP, TRUE, This->node.nsnode, NULL, NULL);
                *prevent_default = TRUE;
            }

            FUNC6(key_event);
        }
    }
    }

    return S_OK;
}
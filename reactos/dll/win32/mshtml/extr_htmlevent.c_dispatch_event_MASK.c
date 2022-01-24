#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t eventid_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  VARIANT_BOOL ;
typedef  int /*<<< orphan*/  VARIANT ;
struct TYPE_11__ {int flags; } ;
struct TYPE_10__ {int /*<<< orphan*/  nsnode; int /*<<< orphan*/  doc; } ;
struct TYPE_9__ {int /*<<< orphan*/  IHTMLEventObj_iface; } ;
typedef  int /*<<< orphan*/  IHTMLEventObj ;
typedef  TYPE_1__ HTMLEventObj ;
typedef  TYPE_2__ HTMLDOMNode ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t EVENTID_LAST ; 
 int EVENT_DEFAULTLISTENER ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  E_NOTIMPL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IHTMLEventObj ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VARIANT_TRUE ; 
 scalar_t__ VT_DISPATCH ; 
 scalar_t__ VT_EMPTY ; 
 scalar_t__ VT_ERROR ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 size_t FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*) ; 
 TYPE_7__* event_info ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,size_t,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,TYPE_2__*,size_t,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC15 (int /*<<< orphan*/ *) ; 

HRESULT FUNC16(HTMLDOMNode *node, const WCHAR *event_name, VARIANT *event_var, VARIANT_BOOL *cancelled)
{
    HTMLEventObj *event_obj = NULL;
    eventid_t eid;
    HRESULT hres;

    eid = FUNC9(event_name);
    if(eid == EVENTID_LAST) {
        FUNC8("unknown event %s\n", FUNC11(event_name));
        return E_INVALIDARG;
    }

    if(event_var && FUNC7(event_var) != VT_EMPTY && FUNC7(event_var) != VT_ERROR) {
        if(FUNC7(event_var) != VT_DISPATCH) {
            FUNC2("event_var %s not supported\n", FUNC10(event_var));
            return E_NOTIMPL;
        }

        if(FUNC6(event_var)) {
            IHTMLEventObj *event_iface;

            hres = FUNC3(FUNC6(event_var), &IID_IHTMLEventObj, (void**)&event_iface);
            if(FUNC1(hres)) {
                FUNC2("No IHTMLEventObj iface\n");
                return hres;
            }

            event_obj = FUNC15(event_iface);
            if(!event_obj) {
                FUNC0("Not our IHTMLEventObj?\n");
                FUNC4(event_iface);
                return E_FAIL;
            }
        }
    }

    if(event_obj) {
        hres = FUNC14(event_obj, node, eid, NULL);
        if(FUNC5(hres))
            FUNC13(node->doc, eid, event_obj, node->nsnode, NULL);

        FUNC4(&event_obj->IHTMLEventObj_iface);
        if(FUNC1(hres))
            return hres;
    }else {
        if(!(event_info[eid].flags & EVENT_DEFAULTLISTENER)) {
            FUNC2("not EVENT_DEFAULTEVENTHANDLER\n");
            return E_NOTIMPL;
        }

        FUNC12(node->doc, eid, TRUE, node->nsnode, NULL, NULL);
    }

    *cancelled = VARIANT_TRUE; /* FIXME */
    return S_OK;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ nsresult ;
typedef  int /*<<< orphan*/  nsIDOMEventTarget ;
typedef  int /*<<< orphan*/  nsAString ;
typedef  char WCHAR ;
struct TYPE_7__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_8__ {int ref; TYPE_2__ nsIDOMEventListener_iface; TYPE_1__* xhr; } ;
struct TYPE_6__ {TYPE_4__* event_listener; int /*<<< orphan*/  nsxhr; } ;
typedef  TYPE_1__ HTMLXMLHttpRequest ;
typedef  int /*<<< orphan*/  DispatchEx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int EVENTID_READYSTATECHANGE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IID_nsIDOMEventTarget ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ NS_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  XMLHttpReqEventListenerVtbl ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_4__* FUNC4 (int) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 

__attribute__((used)) static void FUNC11(DispatchEx *dispex, int eid)
{
    HTMLXMLHttpRequest *This = FUNC5(dispex);
    nsIDOMEventTarget *nstarget;
    nsAString type_str;
    nsresult nsres;

    static const WCHAR readystatechangeW[] = {'r','e','a','d','y','s','t','a','t','e','c','h','a','n','g','e',0};

    FUNC2("(%p)\n", This);

    FUNC3(eid == EVENTID_READYSTATECHANGE);

    if(This->event_listener)
        return;

    This->event_listener = FUNC4(sizeof(*This->event_listener));
    if(!This->event_listener)
        return;

    This->event_listener->nsIDOMEventListener_iface.lpVtbl = &XMLHttpReqEventListenerVtbl;
    This->event_listener->ref = 1;
    This->event_listener->xhr = This;

    nsres = FUNC10(This->nsxhr, &IID_nsIDOMEventTarget, (void**)&nstarget);
    FUNC3(nsres == NS_OK);

    FUNC7(&type_str, readystatechangeW);
    nsres = FUNC8(nstarget, &type_str, &This->event_listener->nsIDOMEventListener_iface, FALSE, TRUE, 2);
    FUNC6(&type_str);
    FUNC9(nstarget);
    if(FUNC1(nsres))
        FUNC0("AddEventListener failed: %08x\n", nsres);
}
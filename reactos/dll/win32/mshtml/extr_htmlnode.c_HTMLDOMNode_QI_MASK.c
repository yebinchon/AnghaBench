#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  dispex; } ;
struct TYPE_7__ {TYPE_1__ event_target; int /*<<< orphan*/  IHTMLDOMNode_iface; int /*<<< orphan*/  IHTMLDOMNode2_iface; } ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_2__ HTMLDOMNode ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOINTERFACE ; 
 int /*<<< orphan*/  IID_IDispatch ; 
 int /*<<< orphan*/  IID_IHTMLDOMNode ; 
 int /*<<< orphan*/  IID_IHTMLDOMNode2 ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  IID_nsCycleCollectionISupports ; 
 int /*<<< orphan*/  IID_nsXPCOMCycleCollectionParticipant ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NS_OK ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_2__*,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_2__*,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  node_ccp ; 

HRESULT FUNC6(HTMLDOMNode *This, REFIID riid, void **ppv)
{
    FUNC2("(%p)->(%s %p)\n", This, FUNC4(riid), ppv);

    if(FUNC1(&IID_IUnknown, riid)) {
        *ppv = &This->IHTMLDOMNode_iface;
    }else if(FUNC1(&IID_IDispatch, riid)) {
        *ppv = &This->IHTMLDOMNode_iface;
    }else if(FUNC1(&IID_IHTMLDOMNode, riid)) {
        *ppv = &This->IHTMLDOMNode_iface;
    }else if(FUNC1(&IID_IHTMLDOMNode2, riid)) {
        *ppv = &This->IHTMLDOMNode2_iface;
    }else if(FUNC1(&IID_nsXPCOMCycleCollectionParticipant, riid)) {
        *ppv = &node_ccp;
        return NS_OK;
    }else if(FUNC1(&IID_nsCycleCollectionISupports, riid)) {
        *ppv = &This->IHTMLDOMNode_iface;
        return NS_OK;
    }else if(FUNC5(&This->event_target.dispex, riid, ppv)) {
        return *ppv ? S_OK : E_NOINTERFACE;
    }else {
        *ppv = NULL;
        FUNC3("(%p)->(%s %p)\n", This, FUNC4(riid), ppv);
        return E_NOINTERFACE;
    }

    FUNC0((IUnknown*)*ppv);
    return S_OK;
}
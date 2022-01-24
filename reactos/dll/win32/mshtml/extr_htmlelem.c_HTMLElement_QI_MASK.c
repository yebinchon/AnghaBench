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
struct TYPE_4__ {int /*<<< orphan*/  IConnectionPointContainer_iface; } ;
struct TYPE_5__ {int /*<<< orphan*/  node; TYPE_1__ cp_container; int /*<<< orphan*/  IHTMLElement4_iface; int /*<<< orphan*/  IHTMLElement3_iface; int /*<<< orphan*/  IHTMLElement2_iface; int /*<<< orphan*/  IHTMLElement_iface; } ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_2__ HTMLElement ;
typedef  int /*<<< orphan*/  HTMLDOMNode ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  IID_IConnectionPointContainer ; 
 int /*<<< orphan*/  IID_IDispatch ; 
 int /*<<< orphan*/  IID_IHTMLElement ; 
 int /*<<< orphan*/  IID_IHTMLElement2 ; 
 int /*<<< orphan*/  IID_IHTMLElement3 ; 
 int /*<<< orphan*/  IID_IHTMLElement4 ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 

HRESULT FUNC4(HTMLDOMNode *iface, REFIID riid, void **ppv)
{
    HTMLElement *This = FUNC3(iface);

    if(FUNC2(&IID_IUnknown, riid)) {
        *ppv = &This->IHTMLElement_iface;
    }else if(FUNC2(&IID_IDispatch, riid)) {
        *ppv = &This->IHTMLElement_iface;
    }else if(FUNC2(&IID_IHTMLElement, riid)) {
        *ppv = &This->IHTMLElement_iface;
    }else if(FUNC2(&IID_IHTMLElement2, riid)) {
        *ppv = &This->IHTMLElement2_iface;
    }else if(FUNC2(&IID_IHTMLElement3, riid)) {
        *ppv = &This->IHTMLElement3_iface;
    }else if(FUNC2(&IID_IHTMLElement4, riid)) {
        *ppv = &This->IHTMLElement4_iface;
    }else if(FUNC2(&IID_IConnectionPointContainer, riid)) {
        *ppv = &This->cp_container.IConnectionPointContainer_iface;
    }else {
        return FUNC0(&This->node, riid, ppv);
    }

    FUNC1((IUnknown*)*ppv);
    return S_OK;
}
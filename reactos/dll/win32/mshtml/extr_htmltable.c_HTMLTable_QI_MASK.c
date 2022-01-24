#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  node; } ;
struct TYPE_6__ {TYPE_1__ element; int /*<<< orphan*/  IHTMLTable3_iface; int /*<<< orphan*/  IHTMLTable2_iface; int /*<<< orphan*/  IHTMLTable_iface; } ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_2__ HTMLTable ;
typedef  int /*<<< orphan*/  HTMLDOMNode ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  IID_IDispatch ; 
 int /*<<< orphan*/  IID_IHTMLTable ; 
 int /*<<< orphan*/  IID_IHTMLTable2 ; 
 int /*<<< orphan*/  IID_IHTMLTable3 ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_2__*,void**) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC5(HTMLDOMNode *iface, REFIID riid, void **ppv)
{
    HTMLTable *This = FUNC4(iface);

    *ppv = NULL;

    if(FUNC2(&IID_IUnknown, riid)) {
        FUNC3("(%p)->(IID_IUnknown %p)\n", This, ppv);
        *ppv = &This->IHTMLTable_iface;
    }else if(FUNC2(&IID_IDispatch, riid)) {
        FUNC3("(%p)->(IID_IDispatch %p)\n", This, ppv);
        *ppv = &This->IHTMLTable_iface;
    }else if(FUNC2(&IID_IHTMLTable, riid)) {
        FUNC3("(%p)->(IID_IHTMLTable %p)\n", This, ppv);
        *ppv = &This->IHTMLTable_iface;
    }else if(FUNC2(&IID_IHTMLTable2, riid)) {
        FUNC3("(%p)->(IID_IHTMLTable2 %p)\n", This, ppv);
        *ppv = &This->IHTMLTable2_iface;
    }else if(FUNC2(&IID_IHTMLTable3, riid)) {
        FUNC3("(%p)->(IID_IHTMLTable3 %p)\n", This, ppv);
        *ppv = &This->IHTMLTable3_iface;
    }

    if(*ppv) {
        FUNC1((IUnknown*)*ppv);
        return S_OK;
    }

    return FUNC0(&This->element.node, riid, ppv);
}
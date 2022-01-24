#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  node; int /*<<< orphan*/  IHTMLDOMTextNode2_iface; int /*<<< orphan*/  IHTMLDOMTextNode_iface; } ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_1__ HTMLDOMTextNode ;
typedef  int /*<<< orphan*/  HTMLDOMNode ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  IID_IHTMLDOMTextNode ; 
 int /*<<< orphan*/  IID_IHTMLDOMTextNode2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC6(HTMLDOMNode *iface, REFIID riid, void **ppv)
{
    HTMLDOMTextNode *This = FUNC5(iface);

    FUNC3("(%p)->(%s %p)\n", This, FUNC4(riid), ppv);

    if(FUNC2(&IID_IHTMLDOMTextNode, riid))
        *ppv = &This->IHTMLDOMTextNode_iface;
    else if(FUNC2(&IID_IHTMLDOMTextNode2, riid))
        *ppv = &This->IHTMLDOMTextNode2_iface;
    else
        return FUNC0(&This->node, riid, ppv);

    FUNC1((IUnknown*)*ppv);
    return S_OK;
}
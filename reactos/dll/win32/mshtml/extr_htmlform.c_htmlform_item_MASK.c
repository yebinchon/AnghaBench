#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsIDOMNode ;
typedef  int /*<<< orphan*/  nsIDOMHTMLCollection ;
struct TYPE_10__ {int /*<<< orphan*/  IHTMLDOMNode_iface; } ;
struct TYPE_7__ {int /*<<< orphan*/  doc; } ;
struct TYPE_8__ {TYPE_1__ node; } ;
struct TYPE_9__ {TYPE_2__ element; int /*<<< orphan*/  nsform; } ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  TYPE_3__ HTMLFormElement ;
typedef  TYPE_4__ HTMLDOMNode ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC8(HTMLFormElement *This, int i, IDispatch **ret)
{
    nsIDOMHTMLCollection *elements;
    nsIDOMNode *item;
    HTMLDOMNode *node;
    nsresult nsres;
    HRESULT hres;

    nsres = FUNC6(This->nsform, &elements);
    if(FUNC2(nsres)) {
        FUNC1("GetElements failed: 0x%08x\n", nsres);
        return E_FAIL;
    }

    nsres = FUNC4(elements, i, &item);
    FUNC5(elements);
    if(FUNC2(nsres)) {
        FUNC1("Item failed: 0x%08x\n", nsres);
        return E_FAIL;
    }

    if(item) {
        hres = FUNC3(This->element.node.doc, item, TRUE, &node);
        if(FUNC0(hres))
            return hres;

        FUNC7(item);
        *ret = (IDispatch*)&node->IHTMLDOMNode_iface;
    }else {
        *ret = NULL;
    }

    return S_OK;
}
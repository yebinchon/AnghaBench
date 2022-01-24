#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsIDOMNode ;
struct TYPE_12__ {int member_2; int size; int len; TYPE_3__** buf; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_2__ elem_vector_t ;
typedef  scalar_t__ UINT16 ;
struct TYPE_14__ {int /*<<< orphan*/  IHTMLDOMNode_iface; } ;
struct TYPE_11__ {int /*<<< orphan*/  doc; int /*<<< orphan*/ * nsnode; } ;
struct TYPE_13__ {TYPE_1__ node; } ;
typedef  int LONG ;
typedef  TYPE_3__ HTMLElement ;
typedef  TYPE_4__ HTMLDOMNode ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ DOCUMENT_FRAGMENT_NODE ; 
 scalar_t__ DOCUMENT_NODE ; 
 scalar_t__ ELEMENT_NODE ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  E_UNEXPECTED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NS_OK ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__**) ; 
 TYPE_3__** FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

HRESULT FUNC12(HTMLElement *elem, LONG *ret)
{
    elem_vector_t buf = {NULL, 0, 8};
    nsIDOMNode *parent_node, *iter;
    UINT16 parent_type;
    HTMLDOMNode *node;
    int i;
    nsresult nsres;
    HRESULT hres;

    iter = elem->node.nsnode;
    FUNC8(iter);

    /* Find document or document fragment parent. */
    while(1) {
        nsres = FUNC10(iter, &parent_node);
        FUNC11(iter);
        FUNC3(nsres == NS_OK);
        if(!parent_node)
            break;

        nsres = FUNC9(parent_node, &parent_type);
        FUNC3(nsres == NS_OK);

        if(parent_type != ELEMENT_NODE) {
            if(parent_type != DOCUMENT_NODE && parent_type != DOCUMENT_FRAGMENT_NODE)
                FUNC1("Unexpected parent_type %d\n", parent_type);
            break;
        }

        iter = parent_node;
    }

    if(!parent_node) {
        *ret = -1;
        return S_OK;
    }

    hres = FUNC5(elem->node.doc, parent_node, TRUE, &node);
    FUNC11(parent_node);
    if(FUNC0(hres))
        return hres;


    /* Create all children collection and find the element in it.
     * This could be optimized if we ever find the reason. */
    buf.buf = FUNC6(buf.size*sizeof(*buf.buf));
    if(!buf.buf) {
        FUNC2(&node->IHTMLDOMNode_iface);
        return E_OUTOFMEMORY;
    }

    FUNC4(elem->node.doc, node, &buf);

    for(i=0; i < buf.len; i++) {
        if(buf.buf[i] == elem)
            break;
    }
    FUNC2(&node->IHTMLDOMNode_iface);
    FUNC7(buf.buf);
    if(i == buf.len) {
        FUNC1("The element is not in parent's child list?\n");
        return E_UNEXPECTED;
    }

    *ret = i;
    return S_OK;
}
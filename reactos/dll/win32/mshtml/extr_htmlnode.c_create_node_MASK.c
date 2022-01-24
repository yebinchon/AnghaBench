#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsIDOMNode ;
typedef  int UINT16 ;
struct TYPE_11__ {int /*<<< orphan*/ * vtbl; } ;
struct TYPE_10__ {TYPE_2__ node; } ;
typedef  TYPE_1__ HTMLElement ;
typedef  int /*<<< orphan*/  HTMLDocumentNode ;
typedef  TYPE_2__ HTMLDOMNode ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
#define  ATTRIBUTE_NODE 132 
#define  COMMENT_NODE 131 
#define  DOCUMENT_TYPE_NODE 130 
#define  ELEMENT_NODE 129 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  E_UNEXPECTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  HTMLDOMNodeImplVtbl ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  S_OK ; 
#define  TEXT_NODE 128 
 int /*<<< orphan*/  FUNC6 (char*,int,TYPE_2__*) ; 
 TYPE_2__* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static HRESULT FUNC9(HTMLDocumentNode *doc, nsIDOMNode *nsnode, HTMLDOMNode **ret)
{
    UINT16 node_type;
    HRESULT hres;

    FUNC8(nsnode, &node_type);

    switch(node_type) {
    case ELEMENT_NODE: {
        HTMLElement *elem;
        hres = FUNC5(doc, nsnode, FALSE, &elem);
        if(FUNC1(hres))
            return hres;
        *ret = &elem->node;
        break;
    }
    case TEXT_NODE:
        hres = FUNC4(doc, nsnode, ret);
        if(FUNC1(hres))
            return hres;
        break;
    /* doctype nodes are represented as comment nodes (at least in quirks mode) */
    case DOCUMENT_TYPE_NODE:
    case COMMENT_NODE: {
        HTMLElement *comment;
        hres = FUNC2(doc, nsnode, &comment);
        if(FUNC1(hres))
            return hres;
        *ret = &comment->node;
        break;
    }
    case ATTRIBUTE_NODE:
        FUNC0("Called on attribute node\n");
        return E_UNEXPECTED;
    default: {
        HTMLDOMNode *node;

        node = FUNC7(sizeof(HTMLDOMNode));
        if(!node)
            return E_OUTOFMEMORY;

        node->vtbl = &HTMLDOMNodeImplVtbl;
        FUNC3(doc, node, nsnode);
        *ret = node;
    }
    }

    FUNC6("type %d ret %p\n", node_type, *ret);
    return S_OK;
}
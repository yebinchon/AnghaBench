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
typedef  scalar_t__ nsresult ;
typedef  int /*<<< orphan*/  nsISupports ;
typedef  int /*<<< orphan*/  nsIDOMNode ;
struct TYPE_7__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_8__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_10__ {TYPE_1__ IHTMLDOMNode_iface; int /*<<< orphan*/ * nsnode; TYPE_3__* doc; int /*<<< orphan*/  ccref; TYPE_2__ IHTMLDOMNode2_iface; } ;
struct TYPE_9__ {int /*<<< orphan*/  basedoc; TYPE_4__ node; } ;
typedef  TYPE_3__ HTMLDocumentNode ;
typedef  TYPE_4__ HTMLDOMNode ;

/* Variables and functions */
 int /*<<< orphan*/  HTMLDOMNode2Vtbl ; 
 int /*<<< orphan*/  HTMLDOMNodeVtbl ; 
 scalar_t__ NS_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC5(HTMLDocumentNode *doc, HTMLDOMNode *node, nsIDOMNode *nsnode)
{
    nsresult nsres;

    node->IHTMLDOMNode_iface.lpVtbl = &HTMLDOMNodeVtbl;
    node->IHTMLDOMNode2_iface.lpVtbl = &HTMLDOMNode2Vtbl;

    FUNC1(&node->ccref, 1);

    if(&doc->node != node)
        FUNC2(&doc->basedoc);
    node->doc = doc;

    FUNC3(nsnode);
    node->nsnode = nsnode;

    nsres = FUNC4(nsnode, (nsISupports*)&node->IHTMLDOMNode_iface);
    FUNC0(nsres == NS_OK);
}
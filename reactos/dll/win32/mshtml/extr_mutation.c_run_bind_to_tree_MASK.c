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
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsISupports ;
typedef  int /*<<< orphan*/  nsIDOMNode ;
struct TYPE_7__ {TYPE_1__* vtbl; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* bind_to_tree ) (TYPE_2__*) ;} ;
typedef  int /*<<< orphan*/  HTMLDocumentNode ;
typedef  TYPE_2__ HTMLDOMNode ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_nsIDOMNode ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static nsresult FUNC9(HTMLDocumentNode *doc, nsISupports *nsiface, nsISupports *arg2)
{
    nsIDOMNode *nsnode;
    HTMLDOMNode *node;
    nsresult nsres;
    HRESULT hres;

    FUNC3("(%p)->(%p)\n", doc, nsiface);

    nsres = FUNC7(nsiface, &IID_nsIDOMNode, (void**)&nsnode);
    if(FUNC2(nsres))
        return nsres;

    hres = FUNC4(doc, nsnode, TRUE, &node);
    FUNC6(nsnode);
    if(FUNC1(hres)) {
        FUNC0("Could not get node\n");
        return nsres;
    }

    if(node->vtbl->bind_to_tree)
        node->vtbl->bind_to_tree(node);

    FUNC5(node);
    return nsres;
}
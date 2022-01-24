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
typedef  scalar_t__ nsresult ;
typedef  int /*<<< orphan*/  nsIDOMNode ;
typedef  int /*<<< orphan*/  nsIDOMHTMLScriptElement ;
struct TYPE_4__ {int /*<<< orphan*/ * vtbl; } ;
typedef  int /*<<< orphan*/  HTMLScriptElement ;
typedef  int /*<<< orphan*/  HTMLDocumentNode ;
typedef  TYPE_1__ HTMLDOMNode ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HTMLScriptElementImplVtbl ; 
 int /*<<< orphan*/  IID_nsIDOMNode ; 
 scalar_t__ NS_OK ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

HRESULT FUNC6(HTMLDocumentNode *doc, nsIDOMHTMLScriptElement *nsscript, HTMLScriptElement **ret)
{
    nsIDOMNode *nsnode;
    HTMLDOMNode *node;
    nsresult nsres;
    HRESULT hres;

    nsres = FUNC4(nsscript, &IID_nsIDOMNode, (void**)&nsnode);
    FUNC1(nsres == NS_OK);

    hres = FUNC2(doc, nsnode, TRUE, &node);
    FUNC5(nsnode);
    if(FUNC0(hres))
        return hres;

    FUNC1(node->vtbl == &HTMLScriptElementImplVtbl);
    *ret = FUNC3(node);
    return S_OK;
}
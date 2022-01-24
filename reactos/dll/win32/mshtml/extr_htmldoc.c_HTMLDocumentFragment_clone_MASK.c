#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsIDOMNode ;
struct TYPE_9__ {int /*<<< orphan*/  doc; } ;
struct TYPE_8__ {TYPE_2__ node; } ;
typedef  TYPE_1__ HTMLDocumentNode ;
typedef  TYPE_2__ HTMLDOMNode ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__**) ; 
 TYPE_1__* FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static HRESULT FUNC3(HTMLDOMNode *iface, nsIDOMNode *nsnode, HTMLDOMNode **ret)
{
    HTMLDocumentNode *This = FUNC2(iface);
    HTMLDocumentNode *new_node;
    HRESULT hres;

    hres = FUNC1(nsnode, This->node.doc, &new_node);
    if(FUNC0(hres))
        return hres;

    *ret = &new_node->node;
    return S_OK;
}
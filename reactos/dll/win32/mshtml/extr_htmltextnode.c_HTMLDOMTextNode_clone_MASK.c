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
typedef  int /*<<< orphan*/  nsIDOMNode ;
struct TYPE_4__ {int /*<<< orphan*/  doc; } ;
struct TYPE_5__ {TYPE_1__ node; } ;
typedef  TYPE_2__ HTMLDOMTextNode ;
typedef  int /*<<< orphan*/  HTMLDOMNode ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC2(HTMLDOMNode *iface, nsIDOMNode *nsnode, HTMLDOMNode **ret)
{
    HTMLDOMTextNode *This = FUNC1(iface);

    return FUNC0(This->node.doc, nsnode, ret);
}
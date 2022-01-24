#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsISupports ;
typedef  int /*<<< orphan*/  nsCycleCollectionTraversalCallback ;
struct TYPE_3__ {scalar_t__ nsselect; } ;
typedef  TYPE_1__ HTMLSelectElement ;
typedef  int /*<<< orphan*/  HTMLDOMNode ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(HTMLDOMNode *iface, nsCycleCollectionTraversalCallback *cb)
{
    HTMLSelectElement *This = FUNC0(iface);

    if(This->nsselect)
        FUNC1((nsISupports*)This->nsselect, "This->nsselect", cb);
}
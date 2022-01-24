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
typedef  int /*<<< orphan*/  nsISupports ;
typedef  int /*<<< orphan*/  nsCycleCollectionTraversalCallback ;
struct TYPE_4__ {scalar_t__ nsframe; } ;
struct TYPE_5__ {TYPE_1__ framebase; } ;
typedef  TYPE_2__ HTMLFrameElement ;
typedef  int /*<<< orphan*/  HTMLDOMNode ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(HTMLDOMNode *iface, nsCycleCollectionTraversalCallback *cb)
{
    HTMLFrameElement *This = FUNC0(iface);

    if(This->framebase.nsframe)
        FUNC1((nsISupports*)This->framebase.nsframe, "This->nsframe", cb);
}
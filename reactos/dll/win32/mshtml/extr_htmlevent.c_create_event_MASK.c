#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ IHTMLEventObj_iface; int /*<<< orphan*/  dispex; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_2__ HTMLEventObj ;

/* Variables and functions */
 int /*<<< orphan*/  HTMLEventObjVtbl ; 
 int /*<<< orphan*/  HTMLEventObj_dispex ; 
 TYPE_2__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HTMLEventObj *FUNC2(void)
{
    HTMLEventObj *ret;

    ret = FUNC0(sizeof(*ret));
    if(!ret)
        return NULL;

    ret->IHTMLEventObj_iface.lpVtbl = &HTMLEventObjVtbl;
    ret->ref = 1;

    FUNC1(&ret->dispex, (IUnknown*)&ret->IHTMLEventObj_iface, &HTMLEventObj_dispex);

    return ret;
}
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
struct TYPE_6__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_7__ {int ref; TYPE_1__ IHTMLElementCollection_iface; int /*<<< orphan*/  dispex; int /*<<< orphan*/  len; int /*<<< orphan*/ ** elems; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_1__ IHTMLElementCollection ;
typedef  TYPE_2__ HTMLElementCollection ;
typedef  int /*<<< orphan*/  HTMLElement ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  HTMLElementCollectionVtbl ; 
 int /*<<< orphan*/  HTMLElementCollection_dispex ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static IHTMLElementCollection *FUNC3(HTMLElement **elems, DWORD len)
{
    HTMLElementCollection *ret = FUNC1(sizeof(HTMLElementCollection));

    if (!ret)
        return NULL;

    ret->IHTMLElementCollection_iface.lpVtbl = &HTMLElementCollectionVtbl;
    ret->ref = 1;
    ret->elems = elems;
    ret->len = len;

    FUNC2(&ret->dispex, (IUnknown*)&ret->IHTMLElementCollection_iface,
            &HTMLElementCollection_dispex);

    FUNC0("ret=%p len=%d\n", ret, len);

    return &ret->IHTMLElementCollection_iface;
}
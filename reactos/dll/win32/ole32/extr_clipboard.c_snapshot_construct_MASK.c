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
struct TYPE_6__ {int /*<<< orphan*/ * data; int /*<<< orphan*/  seq_no; scalar_t__ ref; TYPE_1__ IDataObject_iface; } ;
typedef  TYPE_2__ snapshot ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  snapshot_vtable ; 

__attribute__((used)) static snapshot *FUNC2(DWORD seq_no)
{
    snapshot *This;

    This = FUNC1( FUNC0(), 0, sizeof(*This) );
    if (!This) return NULL;

    This->IDataObject_iface.lpVtbl = &snapshot_vtable;
    This->ref = 0;
    This->seq_no = seq_no;
    This->data = NULL;

    return This;
}
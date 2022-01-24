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
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_6__ {scalar_t__ Status; } ;
struct TYPE_7__ {TYPE_1__ IoStatus; } ;
typedef  TYPE_2__* PIRP ;
typedef  int /*<<< orphan*/  CCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ STATUS_PENDING ; 

VOID
FUNC3(
    PIRP Irp,
    CCHAR PriorityBoost)
{
    FUNC1("Completing IRP %p Status %x\n", Irp, Irp->IoStatus.Status);

    FUNC0(Irp->IoStatus.Status != STATUS_PENDING);


    FUNC2(Irp, PriorityBoost);
}
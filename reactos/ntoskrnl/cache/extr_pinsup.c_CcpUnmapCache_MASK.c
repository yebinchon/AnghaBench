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
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {int /*<<< orphan*/  ToDeref; int /*<<< orphan*/  ToUnmap; } ;
typedef  TYPE_1__* PWORK_QUEUE_WITH_CONTEXT ;
typedef  int /*<<< orphan*/  PVOID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

VOID
FUNC4(PVOID Context)
{
    PWORK_QUEUE_WITH_CONTEXT WorkItem = (PWORK_QUEUE_WITH_CONTEXT)Context;
    FUNC0("Unmapping (finally) %x\n", WorkItem->ToUnmap);
    FUNC2(WorkItem->ToUnmap);
    FUNC3(WorkItem->ToDeref);
    FUNC1(WorkItem);
    FUNC0("Done\n");
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  PDEVICE_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NotificationEvent ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WorkQueue ; 
 int /*<<< orphan*/  WorkQueueClear ; 
 int /*<<< orphan*/  WorkQueueDevice ; 
 int /*<<< orphan*/  WorkQueueLock ; 

VOID FUNC3(PDEVICE_OBJECT DeviceObject)
{
    WorkQueueDevice = DeviceObject;
    FUNC0(&WorkQueue);
    FUNC2(&WorkQueueLock);
    FUNC1(&WorkQueueClear, NotificationEvent, TRUE);
}
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
struct TYPE_3__ {scalar_t__ IsAcquired; int /*<<< orphan*/  Irql; int /*<<< orphan*/  QueueNumber; } ;
typedef  int /*<<< orphan*/  PKSPIN_LOCK ;
typedef  TYPE_1__* PCHECK_DATA ;
typedef  scalar_t__ LOGICAL ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 

BOOLEAN FUNC2(PKSPIN_LOCK SpinLock, PCHECK_DATA CheckData) {
    LOGICAL Ret = FUNC1(CheckData->QueueNumber, &CheckData->Irql);
    CheckData->IsAcquired = TRUE;
    FUNC0(Ret == FALSE || Ret == TRUE);
    return (BOOLEAN)Ret;
}
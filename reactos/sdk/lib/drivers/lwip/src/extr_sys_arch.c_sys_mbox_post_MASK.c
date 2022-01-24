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
struct TYPE_6__ {int /*<<< orphan*/  Event; int /*<<< orphan*/  Lock; int /*<<< orphan*/  ListHead; } ;
typedef  TYPE_1__ sys_mbox_t ;
struct TYPE_7__ {int /*<<< orphan*/  ListEntry; void* Message; } ;
typedef  TYPE_2__* PLWIP_MESSAGE_CONTAINER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IO_NO_INCREMENT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NonPagedPool ; 

void
FUNC4(sys_mbox_t *mbox, void *msg)
{
    PLWIP_MESSAGE_CONTAINER Container;
    
    Container = FUNC1(NonPagedPool, sizeof(*Container));
    FUNC0(Container);
    
    Container->Message = msg;
    
    FUNC2(&mbox->ListHead,
                                &Container->ListEntry,
                                &mbox->Lock);
    
    FUNC3(&mbox->Event, IO_NO_INCREMENT, FALSE);
}
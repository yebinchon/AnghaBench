#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  audio_output_t ;
struct TYPE_7__ {int /*<<< orphan*/  lock; } ;
struct TYPE_8__ {TYPE_4__* list; int /*<<< orphan*/  lock; } ;
struct TYPE_9__ {int /*<<< orphan*/  lock; TYPE_1__ vp; TYPE_2__ dev; int /*<<< orphan*/  refs; } ;
typedef  TYPE_3__ aout_owner_t ;
struct TYPE_10__ {struct TYPE_10__* name; struct TYPE_10__* next; } ;
typedef  TYPE_4__ aout_dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  memory_order_acquire ; 
 int /*<<< orphan*/  memory_order_release ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(audio_output_t *aout)
{
    aout_owner_t *owner = FUNC1(aout);

    if (FUNC2(&owner->refs, 1, memory_order_release))
        return;

    FUNC3(memory_order_acquire);

    FUNC5 (&owner->dev.lock);
    for (aout_dev_t *dev = owner->dev.list, *next; dev != NULL; dev = next)
    {
        next = dev->next;
        FUNC4 (dev->name);
        FUNC4 (dev);
    }

    FUNC5 (&owner->vp.lock);
    FUNC5 (&owner->lock);
    FUNC6(FUNC0(aout));
}
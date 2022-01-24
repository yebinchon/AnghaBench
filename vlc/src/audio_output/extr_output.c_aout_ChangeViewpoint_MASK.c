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
typedef  int /*<<< orphan*/  vlc_viewpoint_t ;
typedef  int /*<<< orphan*/  audio_output_t ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  update; int /*<<< orphan*/  value; } ;
struct TYPE_5__ {TYPE_1__ vp; } ;
typedef  TYPE_2__ aout_owner_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  memory_order_relaxed ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(audio_output_t *aout,
                                 const vlc_viewpoint_t *p_viewpoint)
{
    aout_owner_t *owner = FUNC0(aout);

    FUNC2(&owner->vp.lock);
    owner->vp.value = *p_viewpoint;
    FUNC1(&owner->vp.update, true, memory_order_relaxed);
    FUNC3(&owner->vp.lock);
}
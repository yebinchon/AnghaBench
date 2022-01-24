#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int (* volume_set ) (TYPE_1__*,float) ;} ;
typedef  TYPE_1__ audio_output_t ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ aout_owner_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4 (audio_output_t *aout, float vol)
{
    aout_owner_t *owner = FUNC0(aout);
    int ret;

    FUNC2(&owner->lock);
    ret = aout->volume_set(aout, vol);
    FUNC3(&owner->lock);
    return ret ? -1 : 0;
}
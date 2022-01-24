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
typedef  int /*<<< orphan*/  audio_output_t ;
struct TYPE_3__ {int /*<<< orphan*/  volume; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ aout_owner_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3 (audio_output_t *aout, float gain)
{
    aout_owner_t *owner = FUNC0 (aout);

    FUNC2(&owner->lock);
    FUNC1 (owner->volume, gain);
    /* XXX: ideally, return -1 if format cannot be amplified */
    return 0;
}
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
struct TYPE_4__ {TYPE_2__* locks; } ;
typedef  TYPE_1__ rrmlock_t ;
struct TYPE_5__ {scalar_t__ rr_writer; } ;

/* Variables and functions */
 int RRM_NUM_LOCKS ; 
 size_t FUNC0 () ; 
 scalar_t__ curthread ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,void*) ; 

void
FUNC2(rrmlock_t *rrl, void *tag)
{
	int i;

	if (rrl->locks[0].rr_writer == curthread) {
		for (i = 0; i < RRM_NUM_LOCKS; i++)
			FUNC1(&rrl->locks[i], tag);
	} else {
		FUNC1(&rrl->locks[FUNC0()], tag);
	}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int num_slices; int /*<<< orphan*/ * slices; } ;
typedef  TYPE_1__ Hypercube ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC2(Hypercube *cube1, Hypercube *cube2)
{
	int i;

	FUNC0(cube1->num_slices == cube2->num_slices);

	for (i = 0; i < cube1->num_slices; i++)
		if (!FUNC1(cube1->slices[i], cube2->slices[i]))
			return false;

	return true;
}
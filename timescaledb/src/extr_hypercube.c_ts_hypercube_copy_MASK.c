#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int num_slices; int /*<<< orphan*/ * slices; int /*<<< orphan*/  capacity; } ;
typedef  TYPE_1__ Hypercube ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,size_t) ; 
 TYPE_1__* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

Hypercube *
FUNC4(Hypercube *hc)
{
	Hypercube *copy;
	size_t nbytes = FUNC0(hc->capacity);
	int i;

	copy = FUNC2(nbytes);
	FUNC1(copy, hc, nbytes);

	for (i = 0; i < hc->num_slices; i++)
		copy->slices[i] = FUNC3(hc->slices[i]);

	return copy;
}
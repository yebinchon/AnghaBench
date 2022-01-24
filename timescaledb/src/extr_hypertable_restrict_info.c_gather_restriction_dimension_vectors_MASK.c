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
struct TYPE_7__ {scalar_t__ num_slices; } ;
struct TYPE_6__ {int num_dimensions; int /*<<< orphan*/ ** dimension_restriction; } ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__ HypertableRestrictInfo ;
typedef  TYPE_2__ DimensionVec ;
typedef  int /*<<< orphan*/  DimensionRestrictInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * NIL ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static List *
FUNC4(HypertableRestrictInfo *hri)
{
	int i;
	List *dimension_vecs = NIL;

	for (i = 0; i < hri->num_dimensions; i++)
	{
		DimensionRestrictInfo *dri = hri->dimension_restriction[i];
		DimensionVec *dv;

		FUNC0(NULL != dri);

		dv = FUNC1(dri);

		FUNC0(dv->num_slices >= 0);

		/*
		 * If there are no matching slices in any single dimension, the result
		 * will be empty
		 */
		if (dv->num_slices == 0)
			return NIL;

		dimension_vecs = FUNC2(dimension_vecs, dv);
	}

	FUNC0(FUNC3(dimension_vecs) == hri->num_dimensions);

	return dimension_vecs;
}
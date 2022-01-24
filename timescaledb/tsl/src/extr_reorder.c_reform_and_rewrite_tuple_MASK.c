#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* TupleDesc ;
struct TYPE_9__ {scalar_t__ attisdropped; } ;
struct TYPE_8__ {int natts; } ;
typedef  int /*<<< orphan*/  RewriteState ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 TYPE_6__* FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(HeapTuple tuple, TupleDesc oldTupDesc, TupleDesc newTupDesc, Datum *values,
						 bool *isnull, RewriteState rwstate)
{
	HeapTuple copiedTuple;
	int i;

	FUNC1(tuple, oldTupDesc, values, isnull);

	/* Be sure to null out any dropped columns */
	for (i = 0; i < newTupDesc->natts; i++)
	{
		if (FUNC0(newTupDesc, i)->attisdropped)
			isnull[i] = true;
	}

	copiedTuple = FUNC2(newTupDesc, values, isnull);

	/* The heap rewrite module does the rest */
	FUNC4(rwstate, tuple, copiedTuple);

	FUNC3(copiedTuple);
}
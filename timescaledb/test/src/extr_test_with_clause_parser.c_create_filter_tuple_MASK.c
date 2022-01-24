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
typedef  TYPE_1__* TupleDesc ;
struct TYPE_8__ {int /*<<< orphan*/ * arg; int /*<<< orphan*/ * defname; int /*<<< orphan*/ * defnamespace; } ;
struct TYPE_7__ {int natts; } ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__ DefElem ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int*) ; 
 void* FUNC5 (int) ; 

__attribute__((used)) static HeapTuple
FUNC6(TupleDesc tuple_desc, DefElem *d, bool within)
{
	Datum *values = FUNC5(sizeof(*values) * tuple_desc->natts);
	bool *nulls = FUNC5(sizeof(*nulls) * tuple_desc->natts);

	FUNC0(tuple_desc->natts >= 4);

	if (d->defnamespace != NULL)
		values[0] = FUNC2(d->defnamespace);
	else
		nulls[0] = true;

	if (d->defname != NULL)
		values[1] = FUNC2(d->defname);
	else
		nulls[1] = true;

	if (d->arg != NULL)
		values[2] = FUNC2(FUNC3(d));
	else
		nulls[2] = true;

	values[3] = FUNC1(within);
	return FUNC4(tuple_desc, values, nulls);
}
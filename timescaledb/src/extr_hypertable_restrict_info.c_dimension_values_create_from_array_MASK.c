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
struct TYPE_3__ {int /*<<< orphan*/  consttype; int /*<<< orphan*/  constvalue; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  DimensionValues ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_1__ Const ;
typedef  int /*<<< orphan*/  ArrayIterator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static DimensionValues *
FUNC8(Const *c, bool user_or)
{
	ArrayIterator iterator = FUNC2(FUNC0(c->constvalue), 0, NULL);
	Datum elem = (Datum) NULL;
	bool isnull;
	List *values = NIL;
	Oid base_el_type;

	while (FUNC3(iterator, &elem, &isnull))
	{
		if (!isnull)
			values = FUNC7(values, FUNC1(elem));
	}

	/* it's an array type, lets get the base element type */
	base_el_type = FUNC6(c->consttype);
	if (base_el_type == InvalidOid)
		FUNC5(ERROR, "Couldn't get base element type from array type: %d", c->consttype);

	return FUNC4(values, base_el_type, user_or);
}
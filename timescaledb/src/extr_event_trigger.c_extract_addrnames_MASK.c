#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  TEXTOID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,char,int /*<<< orphan*/ **,int**,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static List *
FUNC4(ArrayType *arr)
{
	Datum *elems;
	bool *nulls;
	int nelems;
	List *list = NIL;
	int i;

	FUNC1(arr, TEXTOID, -1, false, 'i', &elems, &nulls, &nelems);

	for (i = 0; i < nelems; i++)
	{
		if (nulls[i])
			FUNC2(ERROR, "unexpected NULL in name list");

		/* TextDatumGetCString heap allocates the string */
		list = FUNC3(list, FUNC0(elems[i]));
	}

	return list;
}
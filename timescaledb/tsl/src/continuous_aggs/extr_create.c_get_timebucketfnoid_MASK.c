#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int n_members; TYPE_1__** members; } ;
struct TYPE_5__ {int /*<<< orphan*/  tuple; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_2__ CatCList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROCNAMEARGSNSP ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* TIMEBUCKETFN ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static List *
FUNC7()
{
	List *retlist = NIL;
	Oid funcoid;
	const char *funcname = TIMEBUCKETFN;
	CatCList *catlist = FUNC5(PROCNAMEARGSNSP, FUNC1(funcname));
	int i;

	for (i = 0; i < catlist->n_members; i++)
	{
		HeapTuple proctup = &catlist->members[i]->tuple;
		funcoid = FUNC3(FUNC2(proctup));
		retlist = FUNC6(retlist, funcoid);
	}
	FUNC4(catlist);
	FUNC0(retlist != NIL);
	return retlist;
}
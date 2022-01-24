#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ regproc ;
typedef  scalar_t__ (* proc_filter ) (TYPE_2__*,void*) ;
struct TYPE_10__ {int n_members; TYPE_1__** members; } ;
struct TYPE_9__ {scalar_t__ pronamespace; scalar_t__ prorettype; } ;
struct TYPE_8__ {int /*<<< orphan*/  tuple; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_2__* Form_pg_proc ;
typedef  TYPE_4__ CatCList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ InvalidOid ; 
 scalar_t__ FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  PROCNAMEARGSNSP ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Oid
FUNC6(const char *schema, const char *funcname, Oid *rettype, proc_filter filter,
						void *filter_arg)
{
	Oid namespace_oid = FUNC3(schema, false);
	regproc func = InvalidOid;
	CatCList *catlist;
	int i;

	/*
	 * We could use SearchSysCache3 to get by (name, args, namespace), but
	 * that would not allow us to check for functions that take either
	 * ANYELEMENTOID or a dimension-specific in the same search.
	 */
	catlist = FUNC5(PROCNAMEARGSNSP, FUNC0(funcname));

	for (i = 0; i < catlist->n_members; i++)
	{
		HeapTuple proctup = &catlist->members[i]->tuple;
		Form_pg_proc procform = (Form_pg_proc) FUNC1(proctup);

		if (procform->pronamespace == namespace_oid &&
			(filter == NULL || filter(procform, filter_arg)))
		{
			if (rettype)
				*rettype = procform->prorettype;

			func = FUNC2(proctup);
			break;
		}
	}

	FUNC4(catlist);

	return func;
}
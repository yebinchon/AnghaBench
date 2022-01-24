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
struct TYPE_3__ {int /*<<< orphan*/  typalign; int /*<<< orphan*/  typbyval; int /*<<< orphan*/  typlen; int /*<<< orphan*/  element_type; } ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;
typedef  TYPE_1__ ArrayMetaState ;
typedef  int /*<<< orphan*/  ArrayIterator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  TEXTOID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static List *
FUNC8(ArrayType *with_clause_array)
{
	ArrayMetaState with_clause_meta = { .element_type = TEXTOID };
	ArrayIterator with_clause_iter;
	Datum with_clause_datum;
	bool with_clause_null;
	List *def_elems = NIL;

	FUNC6(with_clause_meta.element_type,
						 &with_clause_meta.typlen,
						 &with_clause_meta.typbyval,
						 &with_clause_meta.typalign);
	with_clause_iter = FUNC2(with_clause_array, 1, &with_clause_meta);

	while (FUNC3(with_clause_iter, &with_clause_datum, &with_clause_null))
	{
		Datum *with_clause_fields;
		int with_clause_elems;
		ArrayType *with_clause = FUNC1(with_clause_datum);
		FUNC0(!with_clause_null);
		FUNC4(with_clause,
						  TEXTOID,
						  with_clause_meta.typlen,
						  with_clause_meta.typbyval,
						  with_clause_meta.typalign,
						  &with_clause_fields,
						  NULL,
						  &with_clause_elems);
		def_elems = FUNC7(def_elems, FUNC5(with_clause_fields, with_clause_elems));
	}
	return def_elems;
}
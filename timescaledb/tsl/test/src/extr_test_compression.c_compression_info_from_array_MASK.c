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
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  compression_info_vec ;
typedef  int /*<<< orphan*/ * TupleDesc ;
struct TYPE_6__ {scalar_t__ element_type; int /*<<< orphan*/  typalign; int /*<<< orphan*/  typbyval; int /*<<< orphan*/  typlen; } ;
struct TYPE_5__ {int /*<<< orphan*/  t_data; int /*<<< orphan*/  t_len; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTupleHeader ;
typedef  TYPE_1__ HeapTupleData ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;
typedef  TYPE_2__ ArrayMetaState ;
typedef  int /*<<< orphan*/  ArrayIterator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static compression_info_vec *
FUNC13(ArrayType *compression_info_arr, Oid form_oid)
{
	ArrayMetaState compression_info_arr_meta = {
		.element_type = form_oid,
	};
	ArrayIterator compression_info_iter;
	Datum compression_info_datum;
	bool is_null;
	compression_info_vec *compression_info = FUNC10(CurrentMemoryContext, 0);
	TupleDesc form_desc = NULL;

	FUNC11(compression_info_arr_meta.element_type,
						 &compression_info_arr_meta.typlen,
						 &compression_info_arr_meta.typbyval,
						 &compression_info_arr_meta.typalign);

	compression_info_iter =
		FUNC7(compression_info_arr, 0, &compression_info_arr_meta);

	while (FUNC8(compression_info_iter, &compression_info_datum, &is_null))
	{
		HeapTupleHeader form;
		HeapTupleData tmptup;

		FUNC0(!is_null);
		form = FUNC1(compression_info_datum);
		FUNC0(FUNC5(form) == form_oid);
		if (form_desc == NULL)
		{
			int32 formTypmod = FUNC4(form);
			form_desc = FUNC12(form_oid, formTypmod);
		}

		tmptup.t_len = FUNC3(form);
		tmptup.t_data = form;
		FUNC9(compression_info, (void *) FUNC2(&tmptup));
	}
	if (form_desc != NULL)
		FUNC6(form_desc);
	return compression_info;
}
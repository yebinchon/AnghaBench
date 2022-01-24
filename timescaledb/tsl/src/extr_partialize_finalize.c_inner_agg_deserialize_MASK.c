#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int int32 ;
typedef  int /*<<< orphan*/  bytea ;
struct TYPE_7__ {int* argnull; int isnull; void** arg; } ;
struct TYPE_6__ {scalar_t__ fn_strict; } ;
struct TYPE_8__ {TYPE_2__ internal_deserialfn_fcinfo; int /*<<< orphan*/  typIOParam; TYPE_2__ deserialfn_fcinfo; TYPE_1__ deserialfn; int /*<<< orphan*/  deserialfnoid; } ;
typedef  int /*<<< orphan*/ * StringInfo ;
typedef  TYPE_2__ FunctionCallInfoData ;
typedef  TYPE_3__ FACombineFnMeta ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 () ; 

__attribute__((used)) static Datum
FUNC11(FACombineFnMeta *combine_meta, bytea *serialized_partial,
					  bool serialized_isnull, bool *deserialized_isnull)
{
	Datum deserialized = (Datum) 0;
	FunctionCallInfoData *deser_fcinfo = &combine_meta->deserialfn_fcinfo;
	*deserialized_isnull = true;
	if (FUNC3(combine_meta->deserialfnoid))
	{
		if (serialized_isnull && combine_meta->deserialfn.fn_strict)
		{
			FUNC5();
			/*don't call the deser function */
		}
		deser_fcinfo->arg[0] = FUNC6(serialized_partial);
		deser_fcinfo->argnull[0] = serialized_isnull;
		combine_meta->deserialfn_fcinfo.isnull = false;
		deserialized = FUNC0(deser_fcinfo);
		*deserialized_isnull = deser_fcinfo->isnull;
	}
	else if (!serialized_isnull)
	{
		int32 typmod = -1;
		StringInfo string = FUNC10();

		FUNC9(string,
							   FUNC7(serialized_partial),
							   FUNC8(serialized_partial));
		combine_meta->internal_deserialfn_fcinfo.arg[0] = FUNC6(string);
		combine_meta->internal_deserialfn_fcinfo.arg[1] =
			FUNC2(combine_meta->typIOParam);
		combine_meta->internal_deserialfn_fcinfo.arg[2] = FUNC1(typmod);
		combine_meta->internal_deserialfn_fcinfo.argnull[0] = false;
		combine_meta->internal_deserialfn_fcinfo.argnull[1] = false;
		combine_meta->internal_deserialfn_fcinfo.argnull[2] = false;
		combine_meta->internal_deserialfn_fcinfo.isnull = false;

		deserialized = FUNC0(&combine_meta->internal_deserialfn_fcinfo);
		*deserialized_isnull = combine_meta->internal_deserialfn_fcinfo.isnull;
	}
	FUNC4(deserialized);
}
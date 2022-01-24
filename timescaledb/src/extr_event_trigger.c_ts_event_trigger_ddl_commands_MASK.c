#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rsinfo ;
typedef  scalar_t__ fmNodePtr ;
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_10__ {int natts; } ;
struct TYPE_9__ {scalar_t__ resultinfo; } ;
struct TYPE_8__ {int /*<<< orphan*/  econtext; TYPE_3__* setDesc; int /*<<< orphan*/  setResult; int /*<<< orphan*/  allowedModes; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ ReturnSetInfo ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__ FunctionCallInfoData ;
typedef  int /*<<< orphan*/  EState ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  CollectedCommand ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int DDL_INFO_NATTS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  SFRM_Materialize ; 
 int /*<<< orphan*/  T_ReturnSetInfo ; 
 int /*<<< orphan*/  ddl_commands_fmgrinfo ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 

List *
FUNC14(void)
{
	ReturnSetInfo rsinfo;
	FunctionCallInfoData fcinfo;
	TupleTableSlot *slot;
	EState *estate = FUNC0();
	List *objects = NIL;

	FUNC8(fcinfo, &ddl_commands_fmgrinfo, 1, InvalidOid, NULL, NULL);
	FUNC10(&rsinfo, 0, sizeof(rsinfo));
	rsinfo.type = T_ReturnSetInfo;
	rsinfo.allowedModes = SFRM_Materialize;
	rsinfo.econtext = FUNC1(estate);
	fcinfo.resultinfo = (fmNodePtr) &rsinfo;

	FUNC7(&fcinfo);

	slot = FUNC9(rsinfo.setDesc);

	while (FUNC13(rsinfo.setResult, true, false, slot))
	{
		HeapTuple tuple = FUNC4(slot);
		CollectedCommand *cmd;
		Datum values[DDL_INFO_NATTS];
		bool nulls[DDL_INFO_NATTS];

		FUNC11(tuple, rsinfo.setDesc, values, nulls);

		if (rsinfo.setDesc->natts > 8 && !nulls[8])
		{
			cmd = (CollectedCommand *) FUNC2(values[8]);
			objects = FUNC12(objects, cmd);
		}
	}

	FUNC6(rsinfo.econtext, false);
	FUNC5(estate);
	FUNC3(slot);

	return objects;
}
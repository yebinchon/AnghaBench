#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rsinfo ;
typedef  scalar_t__ fmNodePtr ;
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_7__ {scalar_t__ resultinfo; } ;
struct TYPE_6__ {int /*<<< orphan*/  econtext; int /*<<< orphan*/  setDesc; int /*<<< orphan*/  setResult; int /*<<< orphan*/  allowedModes; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ ReturnSetInfo ;
typedef  int Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__ FunctionCallInfoData ;
typedef  int /*<<< orphan*/  EState ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
#define  ConstraintRelationId 131 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int DROPPED_OBJECTS_NATTS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * NIL ; 
#define  NamespaceRelationId 130 
#define  RelationRelationId 129 
 int /*<<< orphan*/  SFRM_Materialize ; 
 int /*<<< orphan*/  T_ReturnSetInfo ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 
#define  TriggerRelationId 128 
 int /*<<< orphan*/  dropped_objects_fmgrinfo ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (char*,char*) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 

List *
FUNC27(void)
{
	ReturnSetInfo rsinfo;
	FunctionCallInfoData fcinfo;
	TupleTableSlot *slot;
	EState *estate = FUNC0();
	List *objects = NIL;

	FUNC9(fcinfo, &dropped_objects_fmgrinfo, 0, InvalidOid, NULL, NULL);
	FUNC11(&rsinfo, 0, sizeof(rsinfo));
	rsinfo.type = T_ReturnSetInfo;
	rsinfo.allowedModes = SFRM_Materialize;
	rsinfo.econtext = FUNC1(estate);
	fcinfo.resultinfo = (fmNodePtr) &rsinfo;

	FUNC8(&fcinfo);

	slot = FUNC10(rsinfo.setDesc);

	while (FUNC26(rsinfo.setResult, true, false, slot))
	{
		HeapTuple tuple = FUNC5(slot);
		Datum values[DROPPED_OBJECTS_NATTS];
		bool nulls[DROPPED_OBJECTS_NATTS];
		Oid class_id;
		char *objtype;

		FUNC14(tuple, rsinfo.setDesc, values, nulls);

		class_id = FUNC3(values[0]);

		switch (class_id)
		{
			case ConstraintRelationId:
				objtype = FUNC12(values[6]);
				if (objtype != NULL && FUNC25(objtype, "table constraint") == 0)
				{
					List *addrnames = FUNC13(FUNC2(values[10]));

					objects = FUNC15(objects,
									  FUNC22(FUNC18(addrnames),
																			   FUNC16(addrnames),
																			   FUNC17(addrnames)));
				}
				break;
			case RelationRelationId:
				objtype = FUNC12(values[6]);
				if (objtype == NULL)
					break;
				if (FUNC25(objtype, "index") == 0)
				{
					List *addrnames = FUNC13(FUNC2(values[10]));

					objects = FUNC15(objects,
									  FUNC19(FUNC17(addrnames),
																	FUNC16(addrnames)));
				}
				else if (FUNC25(objtype, "table") == 0)
				{
					List *addrnames = FUNC13(FUNC2(values[10]));

					objects = FUNC15(objects,
									  FUNC21(FUNC17(addrnames),
																	FUNC16(addrnames)));
				}
				else if (FUNC25(objtype, "view") == 0)
				{
					List *addrnames = FUNC13(FUNC2(values[10]));

					objects = FUNC15(objects,
									  FUNC24(FUNC17(addrnames),
																   FUNC16(addrnames)));
				}
				break;
			case NamespaceRelationId:
			{
				List *addrnames = FUNC13(FUNC2(values[10]));

				objects = FUNC15(objects, FUNC20(FUNC16(addrnames)));
			}
			break;
			case TriggerRelationId:
			{
				List *addrnames = FUNC13(FUNC2(values[10]));

				objects = FUNC15(objects,
								  FUNC23(FUNC18(addrnames),
																  FUNC16(addrnames),
																  FUNC17(addrnames)));
			}
			break;

			default:
				break;
		}
	}

	FUNC7(rsinfo.econtext, false);
	FUNC6(estate);
	FUNC4(slot);

	return objects;
}
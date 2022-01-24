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
struct TYPE_6__ {int /*<<< orphan*/  optdata; } ;
struct TYPE_8__ {TYPE_1__ statetable; } ;
struct TYPE_7__ {int /*<<< orphan*/  ligatureTable_length; int /*<<< orphan*/  ligatureTable; int /*<<< orphan*/  componentTable_length; int /*<<< orphan*/  componentTable; int /*<<< orphan*/  ligActionTable_length; int /*<<< orphan*/  ligActionTable; } ;
typedef  TYPE_2__* GXV_mort_subtable_type2_StateOptRecData ;
typedef  TYPE_3__* GXV_Validator ;
typedef  int /*<<< orphan*/  FT_UShort ;

/* Variables and functions */
 int /*<<< orphan*/  GXV_EXIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static void
  FUNC3( FT_UShort      table_size,
                                          FT_UShort      classTable,
                                          FT_UShort      stateArray,
                                          FT_UShort      entryTable,
                                          FT_UShort      *classTable_length_p,
                                          FT_UShort      *stateArray_length_p,
                                          FT_UShort      *entryTable_length_p,
                                          GXV_Validator  gxvalid )
  {
    FT_UShort  o[6];
    FT_UShort  *l[6];
    FT_UShort  buff[7];

    GXV_mort_subtable_type2_StateOptRecData  optdata =
      (GXV_mort_subtable_type2_StateOptRecData)gxvalid->statetable.optdata;


    FUNC0( "subtable boundaries setup" );

    o[0] = classTable;
    o[1] = stateArray;
    o[2] = entryTable;
    o[3] = optdata->ligActionTable;
    o[4] = optdata->componentTable;
    o[5] = optdata->ligatureTable;
    l[0] = classTable_length_p;
    l[1] = stateArray_length_p;
    l[2] = entryTable_length_p;
    l[3] = &(optdata->ligActionTable_length);
    l[4] = &(optdata->componentTable_length);
    l[5] = &(optdata->ligatureTable_length);

    FUNC2( o, l, buff, 6, table_size, gxvalid );

    FUNC1(( "classTable: offset=0x%04x length=0x%04x\n",
                classTable, *classTable_length_p ));
    FUNC1(( "stateArray: offset=0x%04x length=0x%04x\n",
                stateArray, *stateArray_length_p ));
    FUNC1(( "entryTable: offset=0x%04x length=0x%04x\n",
                entryTable, *entryTable_length_p ));
    FUNC1(( "ligActionTable: offset=0x%04x length=0x%04x\n",
                optdata->ligActionTable,
                optdata->ligActionTable_length ));
    FUNC1(( "componentTable: offset=0x%04x length=0x%04x\n",
                optdata->componentTable,
                optdata->componentTable_length ));
    FUNC1(( "ligatureTable:  offset=0x%04x length=0x%04x\n",
                optdata->ligatureTable,
                optdata->ligatureTable_length ));

    GXV_EXIT;
  }

typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int optdata; } ;
struct TYPE_8__ {TYPE_1__ statetable; } ;
struct TYPE_7__ {int ligatureTable_length; int ligatureTable; int componentTable_length; int componentTable; int ligActionTable_length; int ligActionTable; } ;
typedef TYPE_2__* GXV_mort_subtable_type2_StateOptRecData ;
typedef TYPE_3__* GXV_Validator ;
typedef int FT_UShort ;


 int GXV_EXIT ;
 int GXV_NAME_ENTER (char*) ;
 int GXV_TRACE (char*) ;
 int gxv_set_length_by_ushort_offset (int *,int **,int *,int,int ,TYPE_3__*) ;

__attribute__((used)) static void
  gxv_mort_subtable_type2_subtable_setup( FT_UShort table_size,
                                          FT_UShort classTable,
                                          FT_UShort stateArray,
                                          FT_UShort entryTable,
                                          FT_UShort *classTable_length_p,
                                          FT_UShort *stateArray_length_p,
                                          FT_UShort *entryTable_length_p,
                                          GXV_Validator gxvalid )
  {
    FT_UShort o[6];
    FT_UShort *l[6];
    FT_UShort buff[7];

    GXV_mort_subtable_type2_StateOptRecData optdata =
      (GXV_mort_subtable_type2_StateOptRecData)gxvalid->statetable.optdata;


    GXV_NAME_ENTER( "subtable boundaries setup" );

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

    gxv_set_length_by_ushort_offset( o, l, buff, 6, table_size, gxvalid );

    GXV_TRACE(( "classTable: offset=0x%04x length=0x%04x\n",
                classTable, *classTable_length_p ));
    GXV_TRACE(( "stateArray: offset=0x%04x length=0x%04x\n",
                stateArray, *stateArray_length_p ));
    GXV_TRACE(( "entryTable: offset=0x%04x length=0x%04x\n",
                entryTable, *entryTable_length_p ));
    GXV_TRACE(( "ligActionTable: offset=0x%04x length=0x%04x\n",
                optdata->ligActionTable,
                optdata->ligActionTable_length ));
    GXV_TRACE(( "componentTable: offset=0x%04x length=0x%04x\n",
                optdata->componentTable,
                optdata->componentTable_length ));
    GXV_TRACE(( "ligatureTable:  offset=0x%04x length=0x%04x\n",
                optdata->ligatureTable,
                optdata->ligatureTable_length ));

    GXV_EXIT;
  }

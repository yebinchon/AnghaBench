
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int optdata; } ;
struct TYPE_8__ {TYPE_1__ statetable; } ;
struct TYPE_7__ {int substitutionTable_length; int substitutionTable; } ;
typedef TYPE_2__* GXV_mort_subtable_type1_StateOptRecData ;
typedef TYPE_3__* GXV_Validator ;
typedef int FT_UShort ;


 int gxv_set_length_by_ushort_offset (int *,int **,int *,int,int ,TYPE_3__*) ;

__attribute__((used)) static void
  gxv_mort_subtable_type1_subtable_setup( FT_UShort table_size,
                                          FT_UShort classTable,
                                          FT_UShort stateArray,
                                          FT_UShort entryTable,
                                          FT_UShort* classTable_length_p,
                                          FT_UShort* stateArray_length_p,
                                          FT_UShort* entryTable_length_p,
                                          GXV_Validator gxvalid )
  {
    FT_UShort o[4];
    FT_UShort *l[4];
    FT_UShort buff[5];

    GXV_mort_subtable_type1_StateOptRecData optdata =
      (GXV_mort_subtable_type1_StateOptRecData)gxvalid->statetable.optdata;


    o[0] = classTable;
    o[1] = stateArray;
    o[2] = entryTable;
    o[3] = optdata->substitutionTable;
    l[0] = classTable_length_p;
    l[1] = stateArray_length_p;
    l[2] = entryTable_length_p;
    l[3] = &( optdata->substitutionTable_length );

    gxv_set_length_by_ushort_offset( o, l, buff, 4, table_size, gxvalid );
  }

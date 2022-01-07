
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int optdata; } ;
struct TYPE_7__ {TYPE_1__ statetable; } ;
struct TYPE_6__ {void* ligatureTable; void* componentTable; void* ligActionTable; } ;
typedef TYPE_2__* GXV_mort_subtable_type2_StateOptRecData ;
typedef TYPE_3__* GXV_Validator ;
typedef int FT_Bytes ;


 void* FT_NEXT_USHORT (int ) ;
 int GXV_LIMIT_CHECK (int) ;
 int GXV_TRACE (char*) ;

__attribute__((used)) static void
  gxv_mort_subtable_type2_opttable_load( FT_Bytes table,
                                         FT_Bytes limit,
                                         GXV_Validator gxvalid )
  {
    FT_Bytes p = table;
    GXV_mort_subtable_type2_StateOptRecData optdata =
      (GXV_mort_subtable_type2_StateOptRecData)gxvalid->statetable.optdata;


    GXV_LIMIT_CHECK( 2 + 2 + 2 );
    optdata->ligActionTable = FT_NEXT_USHORT( p );
    optdata->componentTable = FT_NEXT_USHORT( p );
    optdata->ligatureTable = FT_NEXT_USHORT( p );

    GXV_TRACE(( "offset to ligActionTable=0x%04x\n",
                optdata->ligActionTable ));
    GXV_TRACE(( "offset to componentTable=0x%04x\n",
                optdata->componentTable ));
    GXV_TRACE(( "offset to ligatureTable=0x%04x\n",
                optdata->ligatureTable ));
  }

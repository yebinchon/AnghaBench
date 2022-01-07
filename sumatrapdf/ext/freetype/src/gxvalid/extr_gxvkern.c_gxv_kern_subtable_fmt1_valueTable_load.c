
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int optdata; } ;
struct TYPE_7__ {TYPE_1__ statetable; } ;
struct TYPE_6__ {int valueTable; } ;
typedef TYPE_2__* GXV_kern_fmt1_StateOptRecData ;
typedef TYPE_3__* GXV_Validator ;
typedef int FT_Bytes ;


 int FT_NEXT_USHORT (int ) ;
 int GXV_LIMIT_CHECK (int) ;

__attribute__((used)) static void
  gxv_kern_subtable_fmt1_valueTable_load( FT_Bytes table,
                                          FT_Bytes limit,
                                          GXV_Validator gxvalid )
  {
    FT_Bytes p = table;
    GXV_kern_fmt1_StateOptRecData optdata =
      (GXV_kern_fmt1_StateOptRecData)gxvalid->statetable.optdata;


    GXV_LIMIT_CHECK( 2 );
    optdata->valueTable = FT_NEXT_USHORT( p );
  }

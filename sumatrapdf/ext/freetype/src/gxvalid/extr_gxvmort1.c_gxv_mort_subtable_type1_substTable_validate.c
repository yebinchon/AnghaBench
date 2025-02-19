
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ optdata; } ;
struct TYPE_7__ {scalar_t__ min_gid; scalar_t__ max_gid; TYPE_1__ statetable; } ;
struct TYPE_6__ {int substitutionTable_length; } ;
typedef TYPE_2__ GXV_mort_subtable_type1_StateOptRec ;
typedef TYPE_3__* GXV_Validator ;
typedef scalar_t__ FT_UShort ;
typedef int FT_Bytes ;


 int FT_INVALID_GLYPH_ID ;
 scalar_t__ FT_NEXT_USHORT (int ) ;
 int GXV_EXIT ;
 int GXV_LIMIT_CHECK (int) ;
 int GXV_NAME_ENTER (char*) ;
 int GXV_SET_ERR_IF_PARANOID (int ) ;
 int GXV_TRACE (char*) ;

__attribute__((used)) static void
  gxv_mort_subtable_type1_substTable_validate( FT_Bytes table,
                                               FT_Bytes limit,
                                               GXV_Validator gxvalid )
  {
    FT_Bytes p = table;
    FT_UShort num_gids = (FT_UShort)(
                 ((GXV_mort_subtable_type1_StateOptRec *)
                  (gxvalid->statetable.optdata))->substitutionTable_length / 2 );
    FT_UShort i;


    GXV_NAME_ENTER( "validating contents of substitutionTable" );
    for ( i = 0; i < num_gids; i++ )
    {
      FT_UShort dst_gid;


      GXV_LIMIT_CHECK( 2 );
      dst_gid = FT_NEXT_USHORT( p );

      if ( dst_gid >= 0xFFFFU )
        continue;

      if ( dst_gid < gxvalid->min_gid || gxvalid->max_gid < dst_gid )
      {
        GXV_TRACE(( "substTable include a strange gid[%d]=%d >"
                    " out of define range (%d..%d)\n",
                    i, dst_gid, gxvalid->min_gid, gxvalid->max_gid ));
        GXV_SET_ERR_IF_PARANOID( FT_INVALID_GLYPH_ID );
      }
    }

    GXV_EXIT;
  }

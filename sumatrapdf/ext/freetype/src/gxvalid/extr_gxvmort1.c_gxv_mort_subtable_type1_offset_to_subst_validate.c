
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ optdata; } ;
struct TYPE_9__ {int min_gid; int max_gid; TYPE_2__* face; TYPE_1__ statetable; } ;
struct TYPE_8__ {int substitutionTable; scalar_t__ substitutionTable_length; } ;
struct TYPE_7__ {int num_glyphs; } ;
typedef TYPE_3__ GXV_mort_subtable_type1_StateOptRec ;
typedef TYPE_4__* GXV_Validator ;
typedef int FT_UShort ;
typedef int FT_String ;
typedef int FT_Short ;
typedef int const* FT_Byte ;


 scalar_t__ FT_MAX (int,int ) ;
 int FT_UNUSED (int const*) ;

__attribute__((used)) static void
  gxv_mort_subtable_type1_offset_to_subst_validate(
    FT_Short wordOffset,
    const FT_String* tag,
    FT_Byte state,
    GXV_Validator gxvalid )
  {
    FT_UShort substTable;
    FT_UShort substTable_limit;

    FT_UNUSED( tag );
    FT_UNUSED( state );


    substTable =
      ((GXV_mort_subtable_type1_StateOptRec *)
       (gxvalid->statetable.optdata))->substitutionTable;
    substTable_limit =
      (FT_UShort)( substTable +
                   ((GXV_mort_subtable_type1_StateOptRec *)
                    (gxvalid->statetable.optdata))->substitutionTable_length );

    gxvalid->min_gid = (FT_UShort)( ( substTable - wordOffset * 2 ) / 2 );
    gxvalid->max_gid = (FT_UShort)( ( substTable_limit - wordOffset * 2 ) / 2 );
    gxvalid->max_gid = (FT_UShort)( FT_MAX( gxvalid->max_gid,
                                            gxvalid->face->num_glyphs ) );




  }

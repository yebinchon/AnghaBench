
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int subtable_length; TYPE_1__* root; } ;
struct TYPE_9__ {scalar_t__ base; } ;
typedef TYPE_2__* GXV_Validator ;
typedef scalar_t__ FT_UShort ;
typedef scalar_t__ FT_Bytes ;


 scalar_t__ FT_NEXT_USHORT (scalar_t__) ;
 int GXV_EXIT ;
 int GXV_LIMIT_CHECK (int) ;
 int GXV_NAME_ENTER (char*) ;
 int GXV_ODTECT (int,int ) ;
 int GXV_ODTECT_INIT (int ) ;
 int GXV_TRACE (char*) ;
 int gxv_just_justClassTable_validate (scalar_t__,scalar_t__,TYPE_2__*) ;
 int gxv_just_justData_lookuptable_validate (scalar_t__,scalar_t__,TYPE_2__*) ;
 int gxv_just_postcompTable_validate (scalar_t__,scalar_t__,TYPE_2__*) ;
 int gxv_just_widthDeltaClusters_validate (scalar_t__,scalar_t__,TYPE_2__*) ;
 int gxv_odtect_add_range (scalar_t__,int ,char*,int ) ;
 int gxv_odtect_validate (int ,TYPE_2__*) ;
 int odtect ;

__attribute__((used)) static void
  gxv_just_justData_validate( FT_Bytes table,
                              FT_Bytes limit,
                              GXV_Validator gxvalid )
  {




    FT_UShort justClassTableOffset;
    FT_UShort wdcTableOffset;
    FT_UShort pcTableOffset;
    FT_Bytes p = table;

    GXV_ODTECT( 4, odtect );


    GXV_NAME_ENTER( "just justData" );

    GXV_ODTECT_INIT( odtect );
    GXV_LIMIT_CHECK( 2 + 2 + 2 );
    justClassTableOffset = FT_NEXT_USHORT( p );
    wdcTableOffset = FT_NEXT_USHORT( p );
    pcTableOffset = FT_NEXT_USHORT( p );

    GXV_TRACE(( " (justClassTableOffset = 0x%04x)\n", justClassTableOffset ));
    GXV_TRACE(( " (wdcTableOffset = 0x%04x)\n", wdcTableOffset ));
    GXV_TRACE(( " (pcTableOffset = 0x%04x)\n", pcTableOffset ));

    gxv_just_justData_lookuptable_validate( p, limit, gxvalid );
    gxv_odtect_add_range( p, gxvalid->subtable_length,
                          "just_LookupTable", odtect );

    if ( wdcTableOffset )
    {
      gxv_just_widthDeltaClusters_validate(
        gxvalid->root->base + wdcTableOffset, limit, gxvalid );
      gxv_odtect_add_range( gxvalid->root->base + wdcTableOffset,
                            gxvalid->subtable_length, "just_wdcTable", odtect );
    }

    if ( pcTableOffset )
    {
      gxv_just_postcompTable_validate( gxvalid->root->base + pcTableOffset,
                                       limit, gxvalid );
      gxv_odtect_add_range( gxvalid->root->base + pcTableOffset,
                            gxvalid->subtable_length, "just_pcTable", odtect );
    }

    if ( justClassTableOffset )
    {
      gxv_just_justClassTable_validate(
        gxvalid->root->base + justClassTableOffset, limit, gxvalid );
      gxv_odtect_add_range( gxvalid->root->base + justClassTableOffset,
                            gxvalid->subtable_length, "just_justClassTable",
                            odtect );
    }

    gxv_odtect_validate( odtect, gxvalid );

    GXV_EXIT;
  }

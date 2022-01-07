
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ num_glyphs; TYPE_1__* internal; } ;
struct TYPE_13__ {TYPE_5__* face; } ;
struct TYPE_12__ {int metrics; } ;
struct TYPE_11__ {int hinted_metrics; int * metrics; } ;
struct TYPE_10__ {int incremental_interface; } ;
typedef TYPE_2__* TT_Size ;
typedef int TT_GlyphSlot ;
typedef scalar_t__ FT_UInt ;
typedef TYPE_3__* FT_Size ;
typedef int FT_Int32 ;
typedef TYPE_4__* FT_GlyphSlot ;
typedef TYPE_5__* FT_Face ;
typedef int FT_Error ;


 scalar_t__ FT_IS_TRICKY (TYPE_5__*) ;
 int FT_LOAD_NO_AUTOHINT ;
 int FT_LOAD_NO_BITMAP ;
 int FT_LOAD_NO_HINTING ;
 int FT_LOAD_NO_RECURSE ;
 int FT_LOAD_NO_SCALE ;
 int FT_THROW (int ) ;
 int Invalid_Argument ;
 int Invalid_Face_Handle ;
 int Invalid_Size_Handle ;
 int Invalid_Slot_Handle ;
 int TT_Load_Glyph (TYPE_2__*,int ,scalar_t__,int) ;

__attribute__((used)) static FT_Error
  tt_glyph_load( FT_GlyphSlot ttslot,
                 FT_Size ttsize,
                 FT_UInt glyph_index,
                 FT_Int32 load_flags )
  {
    TT_GlyphSlot slot = (TT_GlyphSlot)ttslot;
    TT_Size size = (TT_Size)ttsize;
    FT_Face face = ttslot->face;
    FT_Error error;


    if ( !slot )
      return FT_THROW( Invalid_Slot_Handle );

    if ( !size )
      return FT_THROW( Invalid_Size_Handle );

    if ( !face )
      return FT_THROW( Invalid_Face_Handle );





    if ( glyph_index >= (FT_UInt)face->num_glyphs )

      return FT_THROW( Invalid_Argument );

    if ( load_flags & FT_LOAD_NO_HINTING )
    {



      if ( FT_IS_TRICKY( face ) )
        load_flags &= ~FT_LOAD_NO_HINTING;

      if ( load_flags & FT_LOAD_NO_AUTOHINT )
        load_flags |= FT_LOAD_NO_HINTING;
    }

    if ( load_flags & ( FT_LOAD_NO_RECURSE | FT_LOAD_NO_SCALE ) )
    {
      load_flags |= FT_LOAD_NO_BITMAP | FT_LOAD_NO_SCALE;

      if ( !FT_IS_TRICKY( face ) )
        load_flags |= FT_LOAD_NO_HINTING;
    }


    size->metrics = ( load_flags & FT_LOAD_NO_HINTING )
                      ? &ttsize->metrics
                      : &size->hinted_metrics;


    error = TT_Load_Glyph( size, slot, glyph_index, load_flags );




    return error;
  }

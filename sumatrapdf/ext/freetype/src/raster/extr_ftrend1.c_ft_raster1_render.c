
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_20__ {int buffer; scalar_t__ rows; int pitch; } ;
struct TYPE_19__ {scalar_t__ format; int bitmap_left; int bitmap_top; TYPE_2__* internal; TYPE_7__ bitmap; int outline; } ;
struct TYPE_18__ {int flags; int * source; TYPE_7__* target; } ;
struct TYPE_14__ {int memory; } ;
struct TYPE_17__ {scalar_t__ glyph_format; int raster; int (* raster_render ) (int ,TYPE_5__*) ;TYPE_1__ root; } ;
struct TYPE_16__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_15__ {int flags; } ;
typedef TYPE_3__ FT_Vector ;
typedef TYPE_4__* FT_Renderer ;
typedef scalar_t__ FT_Render_Mode ;
typedef TYPE_5__ FT_Raster_Params ;
typedef int FT_Pos ;
typedef int FT_Outline ;
typedef int FT_Memory ;
typedef int FT_Int ;
typedef TYPE_6__* FT_GlyphSlot ;
typedef int FT_Error ;
typedef TYPE_7__ FT_Bitmap ;


 int Cannot_Render_Glyph ;
 scalar_t__ FT_ALLOC_MULT (int ,scalar_t__,int ) ;
 int FT_Err_Ok ;
 int FT_FREE (int ) ;
 scalar_t__ FT_GLYPH_FORMAT_BITMAP ;
 int FT_GLYPH_OWN_BITMAP ;
 int FT_Outline_Translate (int *,int,int) ;
 int FT_RASTER_FLAG_DEFAULT ;
 scalar_t__ FT_RENDER_MODE_MONO ;
 int FT_THROW (int ) ;
 int Invalid_Argument ;
 int Raster_Overflow ;
 scalar_t__ ft_glyphslot_preset_bitmap (TYPE_6__*,scalar_t__,TYPE_3__ const*) ;
 int stub1 (int ,TYPE_5__*) ;

__attribute__((used)) static FT_Error
  ft_raster1_render( FT_Renderer render,
                     FT_GlyphSlot slot,
                     FT_Render_Mode mode,
                     const FT_Vector* origin )
  {
    FT_Error error = FT_Err_Ok;
    FT_Outline* outline = &slot->outline;
    FT_Bitmap* bitmap = &slot->bitmap;
    FT_Memory memory = render->root.memory;
    FT_Pos x_shift = 0;
    FT_Pos y_shift = 0;

    FT_Raster_Params params;



    if ( slot->format != render->glyph_format )
    {
      error = FT_THROW( Invalid_Argument );
      goto Exit;
    }


    if ( mode != FT_RENDER_MODE_MONO )
    {

      return FT_THROW( Cannot_Render_Glyph );
    }


    if ( slot->internal->flags & FT_GLYPH_OWN_BITMAP )
    {
      FT_FREE( bitmap->buffer );
      slot->internal->flags &= ~FT_GLYPH_OWN_BITMAP;
    }

    if ( ft_glyphslot_preset_bitmap( slot, mode, origin ) )
    {
      error = FT_THROW( Raster_Overflow );
      goto Exit;
    }


    if ( FT_ALLOC_MULT( bitmap->buffer, bitmap->rows, bitmap->pitch ) )
      goto Exit;

    slot->internal->flags |= FT_GLYPH_OWN_BITMAP;

    x_shift = -slot->bitmap_left * 64;
    y_shift = ( (FT_Int)bitmap->rows - slot->bitmap_top ) * 64;

    if ( origin )
    {
      x_shift += origin->x;
      y_shift += origin->y;
    }


    if ( x_shift || y_shift )
      FT_Outline_Translate( outline, x_shift, y_shift );


    params.target = bitmap;
    params.source = outline;
    params.flags = FT_RASTER_FLAG_DEFAULT;


    error = render->raster_render( render->raster, &params );

  Exit:
    if ( !error )

      slot->format = FT_GLYPH_FORMAT_BITMAP;
    else if ( slot->internal->flags & FT_GLYPH_OWN_BITMAP )
    {
      FT_FREE( bitmap->buffer );
      slot->internal->flags &= ~FT_GLYPH_OWN_BITMAP;
    }

    if ( x_shift || y_shift )
      FT_Outline_Translate( outline, -x_shift, -y_shift );

    return error;
  }

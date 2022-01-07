
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_9__ ;
typedef struct TYPE_36__ TYPE_8__ ;
typedef struct TYPE_35__ TYPE_7__ ;
typedef struct TYPE_34__ TYPE_6__ ;
typedef struct TYPE_33__ TYPE_5__ ;
typedef struct TYPE_32__ TYPE_4__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;
typedef struct TYPE_28__ TYPE_11__ ;
typedef struct TYPE_27__ TYPE_10__ ;


struct TYPE_37__ {int n_points; TYPE_6__* points; } ;
struct TYPE_36__ {int flags; TYPE_9__* source; TYPE_11__* target; } ;
struct TYPE_32__ {int memory; } ;
struct TYPE_35__ {scalar_t__ glyph_format; int raster; scalar_t__ (* raster_render ) (int ,TYPE_8__*) ;TYPE_4__ root; } ;
struct TYPE_34__ {int x; int y; } ;
struct TYPE_33__ {int flags; } ;
struct TYPE_31__ {TYPE_6__* lcd_geometry; int (* lcd_filter_func ) (TYPE_11__*,scalar_t__,int *) ;int * lcd_weights; } ;
struct TYPE_30__ {TYPE_1__* internal; } ;
struct TYPE_29__ {int (* lcd_filter_func ) (TYPE_11__*,scalar_t__,int *) ;int * lcd_weights; } ;
struct TYPE_28__ {unsigned int rows; int pitch; scalar_t__ pixel_mode; unsigned int width; int * buffer; } ;
struct TYPE_27__ {scalar_t__ format; int bitmap_left; int bitmap_top; TYPE_5__* internal; TYPE_3__* library; TYPE_2__* face; TYPE_11__ bitmap; TYPE_9__ outline; } ;
typedef TYPE_6__ FT_Vector ;
typedef unsigned int FT_ULong ;
typedef unsigned int FT_UInt ;
typedef TYPE_7__* FT_Renderer ;
typedef scalar_t__ FT_Render_Mode ;
typedef TYPE_8__ FT_Raster_Params ;
typedef int FT_Pos ;
typedef TYPE_9__ FT_Outline ;
typedef int FT_Memory ;
typedef int FT_Int ;
typedef TYPE_10__* FT_GlyphSlot ;
typedef scalar_t__ FT_Error ;
typedef int FT_Byte ;
typedef int (* FT_Bitmap_LcdFilterFunc ) (TYPE_11__*,scalar_t__,int *) ;
typedef TYPE_11__ FT_Bitmap ;


 int Cannot_Render_Glyph ;
 scalar_t__ FT_ALLOC (int *,unsigned int) ;
 scalar_t__ FT_ALLOC_MULT (int *,unsigned int,int) ;
 scalar_t__ FT_Err_Ok ;
 int FT_FREE (int *) ;
 scalar_t__ FT_GLYPH_FORMAT_BITMAP ;
 int FT_GLYPH_OWN_BITMAP ;
 int FT_MEM_COPY (int *,int *,int) ;
 int FT_Outline_Translate (TYPE_9__*,int,int) ;
 scalar_t__ FT_PIXEL_MODE_LCD_V ;
 int FT_RASTER_FLAG_AA ;
 scalar_t__ FT_RENDER_MODE_LCD ;
 scalar_t__ FT_RENDER_MODE_LCD_V ;
 scalar_t__ FT_THROW (int ) ;
 int Invalid_Argument ;
 int Raster_Overflow ;
 scalar_t__ ft_glyphslot_preset_bitmap (TYPE_10__*,scalar_t__,TYPE_6__ const*) ;
 scalar_t__ stub1 (int ,TYPE_8__*) ;
 scalar_t__ stub2 (int ,TYPE_8__*) ;
 scalar_t__ stub3 (int ,TYPE_8__*) ;
 scalar_t__ stub4 (int ,TYPE_8__*) ;
 scalar_t__ stub5 (int ,TYPE_8__*) ;
 scalar_t__ stub6 (int ,TYPE_8__*) ;
 scalar_t__ stub7 (int ,TYPE_8__*) ;
 scalar_t__ stub8 (int ,TYPE_8__*) ;

__attribute__((used)) static FT_Error
  ft_smooth_render_generic( FT_Renderer render,
                            FT_GlyphSlot slot,
                            FT_Render_Mode mode,
                            const FT_Vector* origin,
                            FT_Render_Mode required_mode )
  {
    FT_Error error = FT_Err_Ok;
    FT_Outline* outline = &slot->outline;
    FT_Bitmap* bitmap = &slot->bitmap;
    FT_Memory memory = render->root.memory;
    FT_Pos x_shift = 0;
    FT_Pos y_shift = 0;
    FT_Int hmul = ( mode == FT_RENDER_MODE_LCD );
    FT_Int vmul = ( mode == FT_RENDER_MODE_LCD_V );

    FT_Raster_Params params;



    if ( slot->format != render->glyph_format )
    {
      error = FT_THROW( Invalid_Argument );
      goto Exit;
    }


    if ( mode != required_mode )
    {
      error = FT_THROW( Cannot_Render_Glyph );
      goto Exit;
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

    x_shift = 64 * -slot->bitmap_left;
    y_shift = 64 * -slot->bitmap_top;
    if ( bitmap->pixel_mode == FT_PIXEL_MODE_LCD_V )
      y_shift += 64 * (FT_Int)bitmap->rows / 3;
    else
      y_shift += 64 * (FT_Int)bitmap->rows;

    if ( origin )
    {
      x_shift += origin->x;
      y_shift += origin->y;
    }


    if ( x_shift || y_shift )
      FT_Outline_Translate( outline, x_shift, y_shift );


    params.target = bitmap;
    params.source = outline;
    params.flags = FT_RASTER_FLAG_AA;
    if ( hmul )
    {
      FT_Byte* line;
      FT_Byte* temp = ((void*)0);
      FT_UInt i, j;

      unsigned int height = bitmap->rows;
      unsigned int width = bitmap->width;
      int pitch = bitmap->pitch;

      FT_Vector* sub = slot->library->lcd_geometry;



      width /= 3;

      FT_Outline_Translate( outline,
                            -sub[0].x,
                            -sub[0].y );
      error = render->raster_render( render->raster, &params );
      if ( error )
        goto Exit;

      bitmap->buffer += width;
      FT_Outline_Translate( outline,
                            sub[0].x - sub[1].x,
                            sub[0].y - sub[1].y );
      error = render->raster_render( render->raster, &params );
      bitmap->buffer -= width;
      if ( error )
        goto Exit;

      bitmap->buffer += 2 * width;
      FT_Outline_Translate( outline,
                            sub[1].x - sub[2].x,
                            sub[1].y - sub[2].y );
      error = render->raster_render( render->raster, &params );
      bitmap->buffer -= 2 * width;
      if ( error )
        goto Exit;

      x_shift -= sub[2].x;
      y_shift -= sub[2].y;




      if ( FT_ALLOC( temp, (FT_ULong)pitch ) )
        goto Exit;

      for ( i = 0; i < height; i++ )
      {
        line = bitmap->buffer + i * (FT_ULong)pitch;
        for ( j = 0; j < width; j++ )
        {
          temp[3 * j ] = line[j];
          temp[3 * j + 1] = line[j + width];
          temp[3 * j + 2] = line[j + width + width];
        }
        FT_MEM_COPY( line, temp, pitch );
      }

      FT_FREE( temp );
    }
    else if ( vmul )
    {
      int pitch = bitmap->pitch;

      FT_Vector* sub = slot->library->lcd_geometry;





      bitmap->pitch *= 3;
      bitmap->rows /= 3;

      FT_Outline_Translate( outline,
                            -sub[0].y,
                            sub[0].x );
      error = render->raster_render( render->raster, &params );
      if ( error )
        goto Exit;

      bitmap->buffer += pitch;
      FT_Outline_Translate( outline,
                            sub[0].y - sub[1].y,
                            sub[1].x - sub[0].x );
      error = render->raster_render( render->raster, &params );
      bitmap->buffer -= pitch;
      if ( error )
        goto Exit;

      bitmap->buffer += 2 * pitch;
      FT_Outline_Translate( outline,
                            sub[1].y - sub[2].y,
                            sub[2].x - sub[1].x );
      error = render->raster_render( render->raster, &params );
      bitmap->buffer -= 2 * pitch;
      if ( error )
        goto Exit;

      x_shift -= sub[2].y;
      y_shift += sub[2].x;

      bitmap->pitch /= 3;
      bitmap->rows *= 3;
    }
    else
      error = render->raster_render( render->raster, &params );



  Exit:
    if ( !error )
    {

      slot->format = FT_GLYPH_FORMAT_BITMAP;
    }
    else if ( slot->internal->flags & FT_GLYPH_OWN_BITMAP )
    {
      FT_FREE( bitmap->buffer );
      slot->internal->flags &= ~FT_GLYPH_OWN_BITMAP;
    }

    if ( x_shift || y_shift )
      FT_Outline_Translate( outline, -x_shift, -y_shift );

    return error;
  }

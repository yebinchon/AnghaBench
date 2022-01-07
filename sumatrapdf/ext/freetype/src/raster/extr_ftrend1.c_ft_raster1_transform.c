
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ format; int outline; } ;
struct TYPE_8__ {scalar_t__ glyph_format; } ;
struct TYPE_7__ {int y; int x; } ;
typedef TYPE_1__ FT_Vector ;
typedef TYPE_2__* FT_Renderer ;
typedef int FT_Matrix ;
typedef TYPE_3__* FT_GlyphSlot ;
typedef int FT_Error ;


 int FT_Err_Ok ;
 int FT_Outline_Transform (int *,int const*) ;
 int FT_Outline_Translate (int *,int ,int ) ;
 int FT_THROW (int ) ;
 int Invalid_Argument ;

__attribute__((used)) static FT_Error
  ft_raster1_transform( FT_Renderer render,
                        FT_GlyphSlot slot,
                        const FT_Matrix* matrix,
                        const FT_Vector* delta )
  {
    FT_Error error = FT_Err_Ok;


    if ( slot->format != render->glyph_format )
    {
      error = FT_THROW( Invalid_Argument );
      goto Exit;
    }

    if ( matrix )
      FT_Outline_Transform( &slot->outline, matrix );

    if ( delta )
      FT_Outline_Translate( &slot->outline, delta->x, delta->y );

  Exit:
    return error;
  }


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FT_Vector ;
typedef int FT_Renderer ;
typedef scalar_t__ FT_Render_Mode ;
typedef int FT_GlyphSlot ;
typedef int FT_Error ;


 scalar_t__ FT_RENDER_MODE_LIGHT ;
 scalar_t__ FT_RENDER_MODE_NORMAL ;
 int ft_smooth_render_generic (int ,int ,scalar_t__,int const*,scalar_t__) ;

__attribute__((used)) static FT_Error
  ft_smooth_render( FT_Renderer render,
                    FT_GlyphSlot slot,
                    FT_Render_Mode mode,
                    const FT_Vector* origin )
  {
    if ( mode == FT_RENDER_MODE_LIGHT )
      mode = FT_RENDER_MODE_NORMAL;

    return ft_smooth_render_generic( render, slot, mode, origin,
                                     FT_RENDER_MODE_NORMAL );
  }

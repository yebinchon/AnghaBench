
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FT_Vector ;
typedef int FT_Renderer ;
typedef int FT_Render_Mode ;
typedef int FT_GlyphSlot ;
typedef int FT_Error ;


 int FT_RENDER_MODE_LCD_V ;
 int ft_smooth_render_generic (int ,int ,int ,int const*,int ) ;

__attribute__((used)) static FT_Error
  ft_smooth_render_lcd_v( FT_Renderer render,
                          FT_GlyphSlot slot,
                          FT_Render_Mode mode,
                          const FT_Vector* origin )
  {
    return ft_smooth_render_generic( render, slot, mode, origin,
                                     FT_RENDER_MODE_LCD_V );
  }

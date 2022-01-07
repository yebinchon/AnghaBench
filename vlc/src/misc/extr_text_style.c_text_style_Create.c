
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i_font_color; int i_outline_color; int i_shadow_color; int i_background_color; int i_outline_width; int i_spacing; int e_wrapinfo; scalar_t__ i_shadow_width; void* i_background_alpha; void* i_shadow_alpha; void* i_outline_alpha; void* i_font_alpha; int i_font_size; int f_font_relsize; int i_style_flags; int i_features; int * psz_monofontname; int * psz_fontname; } ;
typedef TYPE_1__ text_style_t ;


 void* STYLE_ALPHA_OPAQUE ;
 int STYLE_DEFAULT_FONT_SIZE ;
 int STYLE_DEFAULT_REL_FONT_SIZE ;
 int STYLE_FULLY_SET ;
 int STYLE_NO_DEFAULTS ;
 int STYLE_OUTLINE ;
 int STYLE_WRAP_DEFAULT ;
 TYPE_1__* calloc (int,int) ;

text_style_t *text_style_Create( int i_defaults )
{
    text_style_t *p_style = calloc( 1, sizeof(*p_style) );
    if( !p_style )
        return ((void*)0);

    if( i_defaults == STYLE_NO_DEFAULTS )
        return p_style;


    p_style->psz_fontname = ((void*)0);
    p_style->psz_monofontname = ((void*)0);
    p_style->i_features = STYLE_FULLY_SET;
    p_style->i_style_flags = STYLE_OUTLINE;
    p_style->f_font_relsize = STYLE_DEFAULT_REL_FONT_SIZE;
    p_style->i_font_size = STYLE_DEFAULT_FONT_SIZE;
    p_style->i_font_color = 0xffffff;
    p_style->i_font_alpha = STYLE_ALPHA_OPAQUE;
    p_style->i_outline_color = 0x000000;
    p_style->i_outline_alpha = STYLE_ALPHA_OPAQUE;
    p_style->i_shadow_color = 0x808080;
    p_style->i_shadow_alpha = STYLE_ALPHA_OPAQUE;
    p_style->i_background_color = 0x000000;
    p_style->i_background_alpha = STYLE_ALPHA_OPAQUE;
    p_style->i_outline_width = 1;
    p_style->i_shadow_width = 0;
    p_style->i_spacing = -1;
    p_style->e_wrapinfo = STYLE_WRAP_DEFAULT;

    return p_style;
}

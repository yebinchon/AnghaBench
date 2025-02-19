
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int i_background_color; int i_features; int i_font_color; int i_font_alpha; int i_font_size; scalar_t__ i_style_flags; int i_background_alpha; } ;
typedef TYPE_2__ text_style_t ;
struct TYPE_5__ {int i_extra; int * p_extra; } ;
struct TYPE_7__ {TYPE_1__ fmt_in; scalar_t__ p_sys; } ;
typedef TYPE_3__ decoder_t ;


 scalar_t__ ConvertToVLCFlags (int const) ;
 int GetDWBE (int const*) ;
 int STYLE_HAS_BACKGROUND_ALPHA ;
 int STYLE_HAS_BACKGROUND_COLOR ;
 int STYLE_HAS_FLAGS ;
 int STYLE_HAS_FONT_ALPHA ;
 int STYLE_HAS_FONT_COLOR ;

__attribute__((used)) static void ParseExtradataTx3g( decoder_t *p_dec )
{
    text_style_t *p_style = (text_style_t *) p_dec->p_sys;
    const uint8_t *p_extra = p_dec->fmt_in.p_extra;

    if( p_dec->fmt_in.i_extra < 32 )
        return;





    p_style->i_background_color = GetDWBE(&p_extra[6]) >> 8;
    p_style->i_background_alpha = p_extra[9];
    p_style->i_features |= STYLE_HAS_BACKGROUND_COLOR|STYLE_HAS_BACKGROUND_ALPHA;




    p_style->i_style_flags = ConvertToVLCFlags( p_extra[24] );
    if( p_style->i_style_flags )
        p_style->i_features |= STYLE_HAS_FLAGS;
    p_style->i_font_size = p_extra[25];
    p_style->i_font_color = GetDWBE(&p_extra[26]) >> 8;
    p_style->i_font_alpha = p_extra[29];
    p_style->i_features |= STYLE_HAS_FONT_COLOR | STYLE_HAS_FONT_ALPHA;


}

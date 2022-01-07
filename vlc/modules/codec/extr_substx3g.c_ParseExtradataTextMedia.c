
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_6__ {int i_style_flags; int i_features; int i_shadow_color; int i_background_color; int i_font_color; void* i_background_alpha; void* i_shadow_alpha; } ;
typedef TYPE_2__ text_style_t ;
struct TYPE_5__ {int* p_extra; int i_extra; } ;
struct TYPE_7__ {TYPE_1__ fmt_in; scalar_t__ p_sys; } ;
typedef TYPE_3__ decoder_t ;


 int ConvertToVLCFlags (int ) ;
 int GetDWBE (int const*) ;
 int GetWBE (int const*) ;
 void* STYLE_ALPHA_OPAQUE ;
 int STYLE_BACKGROUND ;
 int STYLE_HAS_BACKGROUND_ALPHA ;
 int STYLE_HAS_BACKGROUND_COLOR ;
 int STYLE_HAS_FLAGS ;
 int STYLE_HAS_FONT_COLOR ;
 int STYLE_HAS_SHADOW_ALPHA ;
 int STYLE_HAS_SHADOW_COLOR ;
 int STYLE_SHADOW ;

__attribute__((used)) static void ParseExtradataTextMedia( decoder_t *p_dec )
{
    text_style_t *p_style = (text_style_t *) p_dec->p_sys;
    const uint8_t *p_extra = p_dec->fmt_in.p_extra;

    if( p_dec->fmt_in.i_extra < 44 )
        return;


    uint32_t i_flags = GetDWBE(p_extra);
    if(i_flags & 0x1000)
    {
        p_style->i_style_flags |= STYLE_SHADOW;
        p_style->i_features |= STYLE_HAS_SHADOW_COLOR|STYLE_HAS_FLAGS|STYLE_HAS_SHADOW_ALPHA;
        p_style->i_shadow_color = 0xC0C0C0;
        p_style->i_shadow_alpha = STYLE_ALPHA_OPAQUE;
    }
    if(i_flags & 0x4000)
    {


        p_style->i_style_flags &= ~STYLE_BACKGROUND;
    }




    p_style->i_background_color = (p_extra[8] << 16) |
                                  (p_extra[10] << 8) |
                                   p_extra[12];
    p_style->i_features |= STYLE_HAS_BACKGROUND_COLOR | STYLE_HAS_BACKGROUND_ALPHA;
    p_style->i_background_alpha = STYLE_ALPHA_OPAQUE;






    p_style->i_style_flags |= ConvertToVLCFlags( GetWBE(&p_extra[32]) );
    if( p_style->i_style_flags )
        p_style->i_features |= STYLE_HAS_FLAGS;



    p_style->i_font_color = (p_extra[37] << 16) |
                            (p_extra[39] << 8) |
                             p_extra[41];
    p_style->i_features |= STYLE_HAS_FONT_COLOR;


}

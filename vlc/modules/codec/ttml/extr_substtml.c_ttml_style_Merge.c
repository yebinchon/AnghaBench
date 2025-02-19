
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int b_direction_set; scalar_t__ display; int i_direction; scalar_t__ font_style; } ;
typedef TYPE_1__ ttml_style_t ;


 scalar_t__ TTML_DISPLAY_UNKNOWN ;
 scalar_t__ text_style_Duplicate (scalar_t__) ;
 int text_style_Merge (scalar_t__,scalar_t__,int) ;

__attribute__((used)) static void ttml_style_Merge( const ttml_style_t *p_src, ttml_style_t *p_dst )
{
    if( p_src && p_dst )
    {
        if( p_src->font_style )
        {
            if( p_dst->font_style )
                text_style_Merge( p_dst->font_style, p_src->font_style, 1 );
            else
                p_dst->font_style = text_style_Duplicate( p_src->font_style );
        }

        if( p_src->b_direction_set )
        {
            p_dst->b_direction_set = 1;
            p_dst->i_direction = p_src->i_direction;
        }

        if( p_src->display != TTML_DISPLAY_UNKNOWN )
            p_dst->display = p_src->display;
    }
}

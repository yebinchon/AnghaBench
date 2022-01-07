
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double i_font_size; double f_font_relsize; } ;
typedef TYPE_1__ text_style_t ;


 scalar_t__ unlikely (int) ;

__attribute__((used)) static void FontSizeConvert( const text_style_t *p_reference, text_style_t *p_style )
{
    if( unlikely(!p_style) )
    {
        return;
    }
    else if( unlikely(!p_reference) || p_reference->i_font_size == 0 )
    {
        p_style->i_font_size = 0;
        p_style->f_font_relsize = 5.0;
    }
    else
    {
        p_style->f_font_relsize = 5.0 * (float) p_style->i_font_size / p_reference->i_font_size;
        p_style->i_font_size = 0;
    }
}

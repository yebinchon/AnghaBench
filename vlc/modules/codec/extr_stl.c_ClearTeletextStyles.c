
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* p_style; } ;
typedef TYPE_2__ stl_sg_t ;
struct TYPE_4__ {int i_background_color; int i_style_flags; int f_font_relsize; int i_features; } ;


 int STYLE_DEFAULT_REL_FONT_SIZE ;
 int STYLE_DOUBLEWIDTH ;
 int STYLE_HALFWIDTH ;
 int STYLE_HAS_FONT_COLOR ;

__attribute__((used)) static void ClearTeletextStyles(stl_sg_t *p_group)
{
    if(p_group->p_style)
    {
        p_group->p_style->i_features &= ~STYLE_HAS_FONT_COLOR;
        p_group->p_style->i_background_color = 0x000000;
        p_group->p_style->f_font_relsize = STYLE_DEFAULT_REL_FONT_SIZE;
        p_group->p_style->i_style_flags &= ~(STYLE_DOUBLEWIDTH|STYLE_HALFWIDTH);
    }
}

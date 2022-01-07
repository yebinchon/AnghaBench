
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double bbox_min_y; double bbox_max_y; } ;


 scalar_t__ PRT_PS_FONT_TO_USER (float,double) ;
 float prt_bgcol_offset ;
 float prt_bottom_margin ;
 float prt_first_line_height ;
 int prt_header_height () ;
 float prt_line_height ;
 TYPE_1__* prt_ps_font ;
 float prt_top_margin ;

__attribute__((used)) static int
prt_get_lpp()
{
    int lpp;






    prt_bgcol_offset = (float)PRT_PS_FONT_TO_USER(prt_line_height,
        prt_ps_font->bbox_min_y);
    if ((prt_ps_font->bbox_max_y - prt_ps_font->bbox_min_y) < 1000.0)
    {
 prt_bgcol_offset -= (float)PRT_PS_FONT_TO_USER(prt_line_height,
    (1000.0 - (prt_ps_font->bbox_max_y -
         prt_ps_font->bbox_min_y)) / 2);
    }


    prt_first_line_height = prt_line_height + prt_bgcol_offset;


    lpp = (int)((prt_top_margin - prt_bottom_margin) / prt_line_height);


    prt_top_margin -= prt_line_height * prt_header_height();

    return lpp - prt_header_height();
}

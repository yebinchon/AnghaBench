
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* height; void* width; void* font_size; int list_style_type; int white_space; int vertical_align; int text_align; int visibility; } ;
typedef TYPE_1__ fz_css_style ;
typedef int fz_context ;


 int LST_DISC ;
 int N_AUTO ;
 int N_SCALE ;
 int TA_LEFT ;
 int VA_BASELINE ;
 int V_VISIBLE ;
 int WS_NORMAL ;
 void* make_number (int,int ) ;
 int memset (TYPE_1__*,int ,int) ;

void
fz_default_css_style(fz_context *ctx, fz_css_style *style)
{
 memset(style, 0, sizeof *style);
 style->visibility = V_VISIBLE;
 style->text_align = TA_LEFT;
 style->vertical_align = VA_BASELINE;
 style->white_space = WS_NORMAL;
 style->list_style_type = LST_DISC;
 style->font_size = make_number(1, N_SCALE);
 style->width = make_number(0, N_AUTO);
 style->height = make_number(0, N_AUTO);
}

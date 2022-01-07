
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int layout; } ;
typedef TYPE_1__ textbox ;
struct TYPE_6__ {int width; int x; } ;
typedef TYPE_2__ PangoRectangle ;


 int pango_layout_get_pixel_extents (int ,int *,TYPE_2__*) ;

int textbox_get_font_width ( const textbox *tb )
{
    PangoRectangle rect;
    pango_layout_get_pixel_extents ( tb->layout, ((void*)0), &rect );
    return rect.width + rect.x;
}

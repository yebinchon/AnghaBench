
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int layout; } ;
typedef TYPE_1__ textbox ;


 int pango_layout_get_pixel_size (int ,int *,int*) ;

int textbox_get_font_height ( const textbox *tb )
{
    int height;
    pango_layout_get_pixel_size ( tb->layout, ((void*)0), &height );
    return height;
}

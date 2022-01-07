
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ i_width; scalar_t__ i_height; unsigned int i_visible_width; unsigned int i_visible_height; } ;
typedef TYPE_1__ video_format_t ;



__attribute__((used)) static void
ResizeFormatToGLMaxTexSize(video_format_t *fmt, unsigned int max_tex_size)
{
    if (fmt->i_width > fmt->i_height)
    {
        unsigned int const vis_w = fmt->i_visible_width;
        unsigned int const vis_h = fmt->i_visible_height;
        unsigned int const nw_w = max_tex_size;
        unsigned int const nw_vis_w = nw_w * vis_w / fmt->i_width;

        fmt->i_height = nw_w * fmt->i_height / fmt->i_width;
        fmt->i_width = nw_w;
        fmt->i_visible_height = nw_vis_w * vis_h / vis_w;
        fmt->i_visible_width = nw_vis_w;
    }
    else
    {
        unsigned int const vis_w = fmt->i_visible_width;
        unsigned int const vis_h = fmt->i_visible_height;
        unsigned int const nw_h = max_tex_size;
        unsigned int const nw_vis_h = nw_h * vis_h / fmt->i_height;

        fmt->i_width = nw_h * fmt->i_width / fmt->i_height;
        fmt->i_height = nw_h;
        fmt->i_visible_width = nw_vis_h * vis_w / vis_h;
        fmt->i_visible_height = nw_vis_h;
    }
}

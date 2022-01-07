
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i_visible_height; int i_visible_width; int i_y_offset; int i_x_offset; } ;
typedef TYPE_1__ video_format_t ;



void video_format_CopyCrop( video_format_t *p_dst, const video_format_t *p_src )
{
    p_dst->i_x_offset = p_src->i_x_offset;
    p_dst->i_y_offset = p_src->i_y_offset;
    p_dst->i_visible_width = p_src->i_visible_width;
    p_dst->i_visible_height = p_src->i_visible_height;
}

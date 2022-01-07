
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i_sar_num; int i_sar_den; scalar_t__ i_x_offset; scalar_t__ i_y_offset; scalar_t__ i_visible_width; scalar_t__ i_visible_height; } ;
typedef TYPE_1__ video_format_t ;



__attribute__((used)) static bool VideoFormatIsCropArEqual(video_format_t *dst,
                                     const video_format_t *src)
{
    return dst->i_sar_num * src->i_sar_den == dst->i_sar_den * src->i_sar_num &&
           dst->i_x_offset == src->i_x_offset &&
           dst->i_y_offset == src->i_y_offset &&
           dst->i_visible_width == src->i_visible_width &&
           dst->i_visible_height == src->i_visible_height;
}

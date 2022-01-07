
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_visible_height; unsigned int i_sar_den; unsigned int i_sar_num; unsigned int i_visible_width; } ;
typedef TYPE_1__ video_format_t ;
typedef unsigned int uint64_t ;



__attribute__((used)) static void VoutDisplayCropRatio(int *left, int *top, int *right, int *bottom,
                                 const video_format_t *source,
                                 unsigned num, unsigned den)
{
    unsigned scaled_width = (uint64_t)source->i_visible_height * num * source->i_sar_den / den / source->i_sar_num;
    unsigned scaled_height = (uint64_t)source->i_visible_width * den * source->i_sar_num / num / source->i_sar_den;

    if (scaled_width < source->i_visible_width) {
        *left = (source->i_visible_width - scaled_width) / 2;
        *top = 0;
        *right = *left + scaled_width;
        *bottom = *top + source->i_visible_height;
    } else {
        *left = 0;
        *top = (source->i_visible_height - scaled_height) / 2;
        *right = *left + source->i_visible_width;
        *bottom = *top + scaled_height;
    }
}

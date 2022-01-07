
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int i_pitch; int i_visible_lines; int i_visible_pitch; int * p_pixels; } ;
typedef TYPE_1__ plane_t ;


 int memcpy (int *,int const*,int ) ;

__attribute__((used)) static void Plane_VFlip(plane_t *restrict dst, const plane_t *restrict src)
{
    const uint8_t *src_pixels = src->p_pixels;
    uint8_t *restrict dst_pixels = dst->p_pixels;

    dst_pixels += dst->i_pitch * dst->i_visible_lines;
    for (int y = 0; y < dst->i_visible_lines; y++) {
        dst_pixels -= dst->i_pitch;
        memcpy(dst_pixels, src_pixels, dst->i_visible_pitch);
        src_pixels += src->i_pitch;
    }
}

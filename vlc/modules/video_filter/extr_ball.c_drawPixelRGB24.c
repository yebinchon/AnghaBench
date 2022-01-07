
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {TYPE_1__* p; } ;
typedef TYPE_2__ picture_t ;
typedef int filter_sys_t ;
struct TYPE_4__ {int i_pitch; int * p_pixels; } ;


 int VLC_UNUSED (int) ;

__attribute__((used)) static void drawPixelRGB24( filter_sys_t *p_sys, picture_t *p_outpic,
                            uint8_t R, uint8_t G, uint8_t B,
                            int x, int y, bool b_skip )
{
    VLC_UNUSED( p_sys );
    VLC_UNUSED( b_skip );
    uint8_t *p_pixel = p_outpic->p[0].p_pixels
                       + p_outpic->p[0].i_pitch
                       * x + 3 * y;
    *p_pixel = B;
    *++p_pixel = G;
    *++p_pixel = R;
}

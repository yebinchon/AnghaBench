
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {TYPE_1__* p; } ;
typedef TYPE_2__ picture_t ;
struct TYPE_8__ {int i_y_offset; int i_u_offset; int i_v_offset; } ;
typedef TYPE_3__ filter_sys_t ;
struct TYPE_6__ {int i_pitch; int * p_pixels; } ;



__attribute__((used)) static void drawPixelPacked( filter_sys_t *p_sys, picture_t *p_outpic,
                           uint8_t Y, uint8_t U, uint8_t V,
                           int x, int y, bool b_skip )
{
    uint8_t *p_pixel = p_outpic->p[0].p_pixels
                       + p_outpic->p[0].i_pitch * y + x * 2;
    *( p_pixel + p_sys->i_y_offset ) = Y;
    if( !b_skip )
    {
        *( p_pixel + p_sys->i_u_offset ) = U;
        *( p_pixel + p_sys->i_v_offset ) = V;
    }
}

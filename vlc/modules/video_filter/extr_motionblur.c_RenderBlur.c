
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_12__ {int i_planes; TYPE_3__* p; } ;
typedef TYPE_4__ picture_t ;
struct TYPE_13__ {TYPE_2__* p_tmp; int i_factor; } ;
typedef TYPE_5__ filter_sys_t ;
struct TYPE_11__ {int i_visible_pitch; int i_visible_lines; int const i_pitch; int * p_pixels; } ;
struct TYPE_10__ {TYPE_1__* p; } ;
struct TYPE_9__ {int const i_pitch; int * p_pixels; } ;


 int atomic_load (int *) ;

__attribute__((used)) static void RenderBlur( filter_sys_t *p_sys, picture_t *p_newpic,
                        picture_t *p_outpic )
{
    const int i_oldfactor = atomic_load( &p_sys->i_factor );
    int i_newfactor = 128 - i_oldfactor;

    for( int i_plane = 0; i_plane < p_outpic->i_planes; i_plane++ )
    {
        uint8_t *p_old, *p_new, *p_out, *p_out_end, *p_out_line_end;
        const int i_visible_pitch = p_outpic->p[i_plane].i_visible_pitch;
        const int i_visible_lines = p_outpic->p[i_plane].i_visible_lines;

        p_out = p_outpic->p[i_plane].p_pixels;
        p_new = p_newpic->p[i_plane].p_pixels;
        p_old = p_sys->p_tmp->p[i_plane].p_pixels;
        p_out_end = p_out + p_outpic->p[i_plane].i_pitch * i_visible_lines;
        while ( p_out < p_out_end )
        {
            p_out_line_end = p_out + i_visible_pitch;

            while ( p_out < p_out_line_end )
            {
                *p_out++ = (((*p_old++) * i_oldfactor) +
                            ((*p_new++) * i_newfactor)) >> 7;
            }

            p_old += p_sys->p_tmp->p[i_plane].i_pitch - i_visible_pitch;
            p_new += p_newpic->p[i_plane].i_pitch - i_visible_pitch;
            p_out += p_outpic->p[i_plane].i_pitch - i_visible_pitch;
        }
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int i_output; scalar_t__ i_top; scalar_t__ i_left; scalar_t__ b_active; } ;
typedef TYPE_1__ wall_output_t ;
struct TYPE_8__ {int y; int x; } ;
typedef TYPE_2__ vout_window_mouse_event_t ;
struct TYPE_9__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ video_splitter_t ;
struct TYPE_10__ {int i_row; int i_col; TYPE_1__** pp_output; } ;
typedef TYPE_4__ video_splitter_sys_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int vlc_assert_unreachable () ;

__attribute__((used)) static int Mouse( video_splitter_t *p_splitter, int i_index,
                  vout_window_mouse_event_t *restrict ev )
{
    video_splitter_sys_t *p_sys = p_splitter->p_sys;

    for( int y = 0; y < p_sys->i_row; y++ )
    {
        for( int x = 0; x < p_sys->i_col; x++ )
        {
            wall_output_t *p_output = &p_sys->pp_output[x][y];

            if( p_output->b_active && p_output->i_output == i_index )
            {
                ev->x += p_output->i_left;
                ev->y += p_output->i_top;
                return VLC_SUCCESS;
            }
        }
    }
    vlc_assert_unreachable();
    return VLC_EGENERIC;
}

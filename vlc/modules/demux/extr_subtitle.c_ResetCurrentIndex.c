
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ demux_t ;
struct TYPE_7__ {size_t i_count; size_t i_current; TYPE_1__* p_array; } ;
struct TYPE_9__ {int f_rate; int i_next_demux_date; TYPE_2__ subtitles; } ;
typedef TYPE_4__ demux_sys_t ;
struct TYPE_6__ {int i_start; } ;



__attribute__((used)) static void
ResetCurrentIndex( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    for( size_t i = 0; i < p_sys->subtitles.i_count; i++ )
    {
        if( p_sys->subtitles.p_array[i].i_start * p_sys->f_rate >
            p_sys->i_next_demux_date && i > 0 )
            break;
        p_sys->subtitles.i_current = i;
    }
}

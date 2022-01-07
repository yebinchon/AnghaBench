
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_6__ {size_t i_count; TYPE_1__* p_array; } ;
struct TYPE_7__ {TYPE_2__ index; } ;
typedef TYPE_3__ demux_sys_t ;
struct TYPE_5__ {scalar_t__ time; } ;



__attribute__((used)) static size_t getIndexByTime( demux_sys_t *p_sys, vlc_tick_t i_time )
{
    for( size_t i=0; i<p_sys->index.i_count; i++ )
    {
        if( p_sys->index.p_array[i].time >= i_time )
            return i;
    }
    return 0;
}

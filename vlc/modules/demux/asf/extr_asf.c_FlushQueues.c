
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_5__ {int ** track; } ;
typedef TYPE_2__ demux_sys_t ;
typedef int asf_track_t ;


 int FlushQueue (int *) ;
 unsigned int MAX_ASF_TRACKS ;

__attribute__((used)) static void FlushQueues( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    for ( unsigned int i = 0; i < MAX_ASF_TRACKS; i++ )
    {
        asf_track_t *tk = p_sys->track[i];
        if( !tk )
            continue;
        FlushQueue( tk );
    }
}

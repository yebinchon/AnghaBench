
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b_enabled; int lock; } ;
struct TYPE_4__ {TYPE_1__ still; int dvdnav; } ;
typedef TYPE_2__ demux_sys_t ;


 int dvdnav_still_skip (int ) ;
 scalar_t__ likely (int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void StillTimer( void *p_data )
{
    demux_sys_t *p_sys = p_data;

    vlc_mutex_lock( &p_sys->still.lock );
    if( likely(p_sys->still.b_enabled) )
    {
        p_sys->still.b_enabled = 0;
        dvdnav_still_skip( p_sys->dvdnav );
    }
    vlc_mutex_unlock( &p_sys->still.lock );
}

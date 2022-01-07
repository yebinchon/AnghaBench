
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_4__ {scalar_t__ i_fd; scalar_t__ p_block; } ;
typedef TYPE_2__ demux_sys_t ;


 int block_Release (scalar_t__) ;
 int vlc_close (scalar_t__) ;

__attribute__((used)) static void DemuxClose( vlc_object_t *p_this )
{
    demux_t *p_demux = (demux_t *)p_this;
    demux_sys_t *p_sys = p_demux->p_sys;

    if( p_sys->i_fd >= 0 )
        vlc_close( p_sys->i_fd );

    if( p_sys->p_block ) block_Release( p_sys->p_block );
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_6__ {unsigned int i_buffers; int * pp_buffers; int i_fd; int i_buffer_size; } ;
typedef TYPE_2__ demux_sys_t ;


 int StopDecode (TYPE_1__*) ;
 int free (int *) ;
 int munmap (int ,int ) ;
 int vlc_close (int ) ;

__attribute__((used)) static void CloseCapture( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    StopDecode( p_demux );
    for ( unsigned int i = 0; i < p_sys->i_buffers; i++ )
        munmap( p_sys->pp_buffers[i], p_sys->i_buffer_size );
    vlc_close( p_sys->i_fd );
    free( p_sys->pp_buffers );
}

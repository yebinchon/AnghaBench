
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_6__ {unsigned int i_vbuffers; int i_max_channel; unsigned int i_abuffers; int i_afd; int * pp_abuffers; int i_abuffer_size; int i_vfd; int * pp_vbuffers; int i_vbuffer_size; } ;
typedef TYPE_2__ demux_sys_t ;


 int StopDecode (TYPE_1__*) ;
 int free (int *) ;
 int munmap (int ,int ) ;
 int vlc_close (int ) ;

__attribute__((used)) static void CloseCapture( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    StopDecode( p_demux );





    vlc_close( p_sys->i_vfd );
    if ( p_sys->i_max_channel != -1 )
    {





        vlc_close( p_sys->i_afd );
    }
}

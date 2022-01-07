
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_5__ {struct TYPE_5__* psz_telx_lang; struct TYPE_5__* psz_telx; } ;
typedef TYPE_2__ demux_sys_t ;


 int free (TYPE_2__*) ;

__attribute__((used)) static void DemuxClose( vlc_object_t *p_this )
{
    demux_t *p_demux = (demux_t *)p_this;
    demux_sys_t *p_sys = p_demux->p_sys;

    free( p_sys->psz_telx );
    free( p_sys->psz_telx_lang );
    free( p_sys );
}

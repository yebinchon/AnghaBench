
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_5__ {int * chained_demux; } ;
typedef TYPE_2__ demux_sys_t ;


 int vlc_demux_chained_Delete (void*) ;

__attribute__((used)) static void stream_destroy (demux_t *demux, void *data)
{
    demux_sys_t *p_sys = demux->p_sys;

    if (data)
    {
        vlc_demux_chained_Delete(data);
        p_sys->chained_demux = ((void*)0);
    }
}

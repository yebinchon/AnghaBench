
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int out; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_6__ {void* chained_demux; } ;
typedef TYPE_2__ demux_sys_t ;


 int VLC_OBJECT (TYPE_1__*) ;
 void* vlc_demux_chained_New (int ,char const*,int ) ;

__attribute__((used)) static void *stream_init (demux_t *demux, const char *name)
{
    demux_sys_t *p_sys = demux->p_sys;

    if (p_sys->chained_demux != ((void*)0))
        return ((void*)0);
    p_sys->chained_demux = vlc_demux_chained_New(VLC_OBJECT(demux), name,
                                                 demux->out);
    return p_sys->chained_demux;
}

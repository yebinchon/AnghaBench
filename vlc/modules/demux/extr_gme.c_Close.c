
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_6__ {unsigned int titlec; int emu; struct TYPE_6__* titlev; } ;
typedef TYPE_2__ demux_sys_t ;


 int free (TYPE_2__*) ;
 int gme_delete (int ) ;
 int vlc_input_title_Delete (TYPE_2__) ;

__attribute__((used)) static void Close (vlc_object_t *obj)
{
    demux_t *demux = (demux_t *)obj;
    demux_sys_t *sys = demux->p_sys;

    for (unsigned i = 0, n = sys->titlec; i < n; i++)
        vlc_input_title_Delete (sys->titlev[i]);
    free (sys->titlev);
    gme_delete (sys->emu);
    free (sys);
}

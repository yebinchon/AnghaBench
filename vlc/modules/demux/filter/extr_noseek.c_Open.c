
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_2__ {int pf_control; int pf_demux; } ;
typedef TYPE_1__ demux_t ;


 int Control ;
 int Demux ;
 int VLC_SUCCESS ;

__attribute__((used)) static int Open(vlc_object_t *obj)
{
    demux_t *demux = (demux_t *)obj;

    demux->pf_demux = Demux;
    demux->pf_control = Control;
    return VLC_SUCCESS;
}

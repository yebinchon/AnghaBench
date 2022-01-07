
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {int pf_control; int pf_demux; int * p_input_item; TYPE_1__* s; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_3__ {int * pf_readdir; } ;


 int Control ;
 int Demux ;
 int VLC_EGENERIC ;
 int VLC_ETIMEOUT ;
 int VLC_SUCCESS ;

__attribute__((used)) static int Import_Dir( vlc_object_t *p_this )
{
    demux_t *p_demux = (demux_t *)p_this;

    if( p_demux->s->pf_readdir == ((void*)0) )
        return VLC_EGENERIC;
    if( p_demux->p_input_item == ((void*)0) )
        return VLC_ETIMEOUT;

    p_demux->pf_demux = Demux;
    p_demux->pf_control = Control;

    return VLC_SUCCESS;
}

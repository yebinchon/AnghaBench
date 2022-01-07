
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; int pf_mux; int pf_delstream; int pf_addstream; int pf_control; } ;
typedef TYPE_1__ sout_mux_t ;
struct TYPE_5__ {int b_used; int b_header; scalar_t__ i_chans_to_reorder; scalar_t__ i_data; } ;
typedef TYPE_2__ sout_mux_sys_t ;


 int AddStream ;
 int Control ;
 int DelStream ;
 int Mux ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 TYPE_2__* malloc (int) ;

__attribute__((used)) static int Open( vlc_object_t *p_this )
{
    sout_mux_t *p_mux = (sout_mux_t*)p_this;
    sout_mux_sys_t *p_sys;

    p_mux->pf_control = Control;
    p_mux->pf_addstream = AddStream;
    p_mux->pf_delstream = DelStream;
    p_mux->pf_mux = Mux;

    p_mux->p_sys = p_sys = malloc( sizeof( sout_mux_sys_t ) );
    if( !p_sys )
        return VLC_ENOMEM;
    p_sys->b_used = 0;
    p_sys->b_header = 1;
    p_sys->i_data = 0;

    p_sys->i_chans_to_reorder = 0;

    return VLC_SUCCESS;
}

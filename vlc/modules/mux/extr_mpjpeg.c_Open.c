
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {int * p_sys; int pf_mux; int pf_delstream; int pf_addstream; int pf_control; } ;
typedef TYPE_1__ sout_mux_t ;


 int AddStream ;
 int Control ;
 int DelStream ;
 int Mux ;
 int VLC_SUCCESS ;
 int msg_Dbg (TYPE_1__*,char*) ;

__attribute__((used)) static int Open( vlc_object_t *p_this )
{
    sout_mux_t *p_mux = (sout_mux_t*)p_this;

    msg_Dbg( p_mux, "Multipart jpeg muxer opened" );

    p_mux->pf_control = Control;
    p_mux->pf_addstream = AddStream;
    p_mux->pf_delstream = DelStream;
    p_mux->pf_mux = Mux;
    p_mux->p_sys = ((void*)0);

    return VLC_SUCCESS;
}

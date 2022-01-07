
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {int * p_sys; } ;
typedef TYPE_1__ sout_mux_t ;
typedef int sout_mux_sys_t ;


 int free (int *) ;
 int msg_Dbg (TYPE_1__*,char*) ;

__attribute__((used)) static void Close( vlc_object_t * p_this )
{
    sout_mux_t *p_mux = (sout_mux_t*)p_this;
    sout_mux_sys_t *p_sys = p_mux->p_sys;

    msg_Dbg( p_mux, "Dummy/Raw muxer closed" );
    free( p_sys );
}

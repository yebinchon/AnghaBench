
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_mux_t ;
struct TYPE_6__ {struct TYPE_6__* io_buffer; int io; int oc; int b_error; int b_write_header; } ;
typedef TYPE_2__ sout_mux_sys_t ;


 int av_free (int ) ;
 scalar_t__ av_write_trailer (int ) ;
 int avformat_free_context (int ) ;
 int free (TYPE_2__*) ;
 int msg_Err (TYPE_1__*,char*) ;

void avformat_CloseMux( vlc_object_t *p_this )
{
    sout_mux_t *p_mux = (sout_mux_t*)p_this;
    sout_mux_sys_t *p_sys = p_mux->p_sys;

    if( !p_sys->b_write_header && !p_sys->b_error && av_write_trailer( p_sys->oc ) < 0 )
    {
        msg_Err( p_mux, "could not write trailer" );
    }

    avformat_free_context(p_sys->oc);
    av_free(p_sys->io);

    free( p_sys->io_buffer );
    free( p_sys );
}

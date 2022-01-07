
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_6__ {int p_chromaprint_ctx; int b_done; } ;
typedef TYPE_2__ sout_stream_sys_t ;


 int Finish (TYPE_1__*) ;
 int chromaprint_free (int ) ;
 int free (TYPE_2__*) ;

__attribute__((used)) static void Close( vlc_object_t * p_this )
{
    sout_stream_t *p_stream = (sout_stream_t *)p_this;
    sout_stream_sys_t *p_sys = p_stream->p_sys;

    if ( !p_sys->b_done ) Finish( p_stream );
    chromaprint_free( p_sys->p_chromaprint_ctx );
    free( p_sys );
}

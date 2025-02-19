
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_5__ {struct TYPE_5__* psz_prefix; int id; int i_id; scalar_t__ p_out; } ;
typedef TYPE_2__ sout_stream_sys_t ;


 int TAB_CLEAN (int ,int ) ;
 int free (TYPE_2__*) ;
 int sout_StreamChainDelete (scalar_t__,scalar_t__) ;

__attribute__((used)) static void Close( vlc_object_t * p_this )
{
    sout_stream_t *p_stream = (sout_stream_t*)p_this;
    sout_stream_sys_t *p_sys = p_stream->p_sys;

    if( p_sys->p_out )
        sout_StreamChainDelete( p_sys->p_out, p_sys->p_out );

    TAB_CLEAN( p_sys->i_id, p_sys->id );
    free( p_sys->psz_prefix );
    free( p_sys );
}

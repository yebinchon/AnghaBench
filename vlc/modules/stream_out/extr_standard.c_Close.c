
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_7__ {TYPE_3__* p_mux; int * p_session; } ;
typedef TYPE_2__ sout_stream_sys_t ;
typedef int sout_access_out_t ;
struct TYPE_8__ {int * p_access; } ;


 int free (TYPE_2__*) ;
 int sout_AccessOutDelete (int *) ;
 int sout_AnnounceUnRegister (TYPE_1__*,int *) ;
 int sout_MuxDelete (TYPE_3__*) ;

__attribute__((used)) static void Close( vlc_object_t * p_this )
{
    sout_stream_t *p_stream = (sout_stream_t*)p_this;
    sout_stream_sys_t *p_sys = p_stream->p_sys;
    sout_access_out_t *p_access = p_sys->p_mux->p_access;

    if( p_sys->p_session != ((void*)0) )
        sout_AnnounceUnRegister( p_stream, p_sys->p_session );

    sout_MuxDelete( p_sys->p_mux );
    sout_AccessOutDelete( p_access );

    free( p_sys );
}

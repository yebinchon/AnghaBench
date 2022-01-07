
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {scalar_t__ p_sys; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_5__ {struct TYPE_5__* psz_language; } ;
typedef TYPE_2__ sout_stream_sys_t ;


 int free (TYPE_2__*) ;

__attribute__((used)) static void Close( vlc_object_t * p_this )
{
    sout_stream_t *p_stream = (sout_stream_t*)p_this;
    sout_stream_sys_t *p_sys = (sout_stream_sys_t *)p_stream->p_sys;

    free( p_sys->psz_language );
    free( p_sys );
}

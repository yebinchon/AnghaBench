
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_2__ {int * p_sys; } ;
typedef TYPE_1__ sout_stream_t ;
typedef int sout_stream_sys_t ;


 int free (int *) ;
 int msg_Dbg (int *,char*) ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    sout_stream_t *p_stream = (sout_stream_t *)p_this;
    sout_stream_sys_t *p_sys = p_stream->p_sys;

    msg_Dbg( p_this, "Closing" );

    free( p_sys );
}

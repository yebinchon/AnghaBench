
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * fd; } ;
struct TYPE_5__ {TYPE_1__ listen; int p_stream; } ;
typedef TYPE_2__ sout_stream_id_sys_t ;


 int assert (int ) ;
 int net_Accept (int ,int *) ;
 int rtp_add_sink (TYPE_2__*,int,int,int *) ;
 int vlc_assert_unreachable () ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;

__attribute__((used)) static void *rtp_listen_thread( void *data )
{
    sout_stream_id_sys_t *id = data;

    assert( id->listen.fd != ((void*)0) );

    for( ;; )
    {
        int fd = net_Accept( id->p_stream, id->listen.fd );
        if( fd == -1 )
            continue;
        int canc = vlc_savecancel( );
        rtp_add_sink( id, fd, 1, ((void*)0) );
        vlc_restorecancel( canc );
    }

    vlc_assert_unreachable();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int i_port; int psz_host; } ;
typedef TYPE_1__ vlc_url_t ;
typedef int vlc_tls_t ;
struct vlc_memstream {scalar_t__ length; int ptr; } ;
struct TYPE_9__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ stream_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_10__ {int * stream; TYPE_1__ url; TYPE_1__ proxy; scalar_t__ b_proxy; } ;
typedef TYPE_3__ access_sys_t ;


 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_OBJECT (TYPE_2__*) ;
 int VLC_SUCCESS ;
 int free (int ) ;
 int msg_Dbg (TYPE_2__*,char*,int ) ;
 int msg_Err (TYPE_2__*,char*) ;
 scalar_t__ vlc_memstream_close (struct vlc_memstream*) ;
 int vlc_memstream_puts (struct vlc_memstream*,char*) ;
 int vlc_tls_Close (int *) ;
 int * vlc_tls_SocketOpenTCP (int ,int ,int ) ;
 scalar_t__ vlc_tls_Write (int *,int ,scalar_t__) ;

__attribute__((used)) static int OpenConnection( stream_t *p_access,
                           struct vlc_memstream *restrict stream )
{
    access_sys_t *p_sys = p_access->p_sys;
    const vlc_url_t *srv = p_sys->b_proxy ? &p_sys->proxy : &p_sys->url;


    vlc_memstream_puts( stream, "Connection: Close\r\n" );

    vlc_memstream_puts( stream, "\r\n" );

    if( vlc_memstream_close( stream ) )
        return VLC_ENOMEM;

    vlc_tls_t *sock = vlc_tls_SocketOpenTCP( VLC_OBJECT(p_access),
                                             srv->psz_host, srv->i_port );
    if( sock == ((void*)0) )
    {
        free( stream->ptr );
        return VLC_EGENERIC;
    }

    msg_Dbg( p_access, "sending request:\n%s", stream->ptr );

    ssize_t val = vlc_tls_Write( sock, stream->ptr, stream->length );
    free( stream->ptr );
    if( val < (ssize_t)stream->length )
    {
        msg_Err( p_access, "failed to send request" );
        vlc_tls_Close( sock );
        stream = ((void*)0);
    }

    p_sys->stream = sock;
    return (sock != ((void*)0)) ? VLC_SUCCESS : VLC_EGENERIC;
}

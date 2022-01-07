
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cbMaximumMessage; } ;
struct TYPE_6__ {int socket; TYPE_1__ ssl_sizes; scalar_t__ secure; } ;
typedef TYPE_2__ netconn_t ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int errno ;
 size_t min (size_t,int ) ;
 int send_ssl_chunk (TYPE_2__*,int const*,size_t) ;
 int set_last_error (int ) ;
 int sock_get_error (int ) ;
 int sock_send (int ,void const*,size_t,int ) ;

BOOL netconn_send( netconn_t *conn, const void *msg, size_t len, int *sent )
{
    if (conn->secure)
    {
        const BYTE *ptr = msg;
        size_t chunk_size;

        *sent = 0;

        while(len) {
            chunk_size = min(len, conn->ssl_sizes.cbMaximumMessage);
            if(!send_ssl_chunk(conn, ptr, chunk_size))
                return FALSE;

            *sent += chunk_size;
            ptr += chunk_size;
            len -= chunk_size;
        }

        return TRUE;
    }
    if ((*sent = sock_send( conn->socket, msg, len, 0 )) == -1)
    {
        set_last_error( sock_get_error( errno ) );
        return FALSE;
    }
    return TRUE;
}

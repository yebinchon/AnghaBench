
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int host; int socket; int ssl_ctx; struct TYPE_4__* extra_buf; struct TYPE_4__* ssl_buf; struct TYPE_4__* peek_msg_mem; scalar_t__ secure; } ;
typedef TYPE_1__ netconn_t ;
typedef int BOOL ;


 int DeleteSecurityContext (int *) ;
 int FALSE ;
 int TRUE ;
 int closesocket (int ) ;
 int errno ;
 int heap_free (TYPE_1__*) ;
 int release_host (int ) ;
 int set_last_error (int ) ;
 int sock_get_error (int ) ;

BOOL netconn_close( netconn_t *conn )
{
    int res;

    if (conn->secure)
    {
        heap_free( conn->peek_msg_mem );
        heap_free(conn->ssl_buf);
        heap_free(conn->extra_buf);
        DeleteSecurityContext(&conn->ssl_ctx);
    }
    res = closesocket( conn->socket );
    release_host( conn->host );
    heap_free(conn);
    if (res == -1)
    {
        set_last_error( sock_get_error( errno ) );
        return FALSE;
    }
    return TRUE;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ peek_len; int socket; int * peek_msg; int * peek_msg_mem; scalar_t__ secure; } ;
typedef TYPE_1__ netconn_t ;
typedef size_t SIZE_T ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int MSG_WAITALL ;
 int TRACE (char*,...) ;
 scalar_t__ TRUE ;
 int WARN (char*) ;
 int errno ;
 int heap_free (int *) ;
 int memcpy (void*,int *,int) ;
 int min (size_t,scalar_t__) ;
 scalar_t__ read_ssl_chunk (TYPE_1__*,int *,size_t,size_t*,scalar_t__*) ;
 int set_last_error (int ) ;
 int sock_get_error (int ) ;
 int sock_recv (int ,void*,size_t,int) ;

BOOL netconn_recv( netconn_t *conn, void *buf, size_t len, int flags, int *recvd )
{
    *recvd = 0;
    if (!len) return TRUE;

    if (conn->secure)
    {
        SIZE_T size, cread;
        BOOL res, eof;

        if (conn->peek_msg)
        {
            *recvd = min( len, conn->peek_len );
            memcpy( buf, conn->peek_msg, *recvd );
            conn->peek_len -= *recvd;
            conn->peek_msg += *recvd;

            if (conn->peek_len == 0)
            {
                heap_free( conn->peek_msg_mem );
                conn->peek_msg_mem = ((void*)0);
                conn->peek_msg = ((void*)0);
            }

            if (!(flags & MSG_WAITALL) || *recvd == len) return TRUE;
        }
        size = *recvd;

        do {
            res = read_ssl_chunk(conn, (BYTE*)buf+size, len-size, &cread, &eof);
            if(!res) {
                WARN("read_ssl_chunk failed\n");
                if(!size)
                    return FALSE;
                break;
            }

            if(eof) {
                TRACE("EOF\n");
                break;
            }

            size += cread;
        }while(!size || ((flags & MSG_WAITALL) && size < len));

        TRACE("received %ld bytes\n", size);
        *recvd = size;
        return TRUE;
    }
    if ((*recvd = sock_recv( conn->socket, buf, len, flags )) == -1)
    {
        set_last_error( sock_get_error( errno ) );
        return FALSE;
    }
    return TRUE;
}

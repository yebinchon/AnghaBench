#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ peek_len; int /*<<< orphan*/  socket; int /*<<< orphan*/ * peek_msg; int /*<<< orphan*/ * peek_msg_mem; scalar_t__ secure; } ;
typedef  TYPE_1__ netconn_t ;
typedef  size_t SIZE_T ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int MSG_WAITALL ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (size_t,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,size_t,size_t*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,void*,size_t,int) ; 

BOOL FUNC9( netconn_t *conn, void *buf, size_t len, int flags, int *recvd )
{
    *recvd = 0;
    if (!len) return TRUE;

    if (conn->secure)
    {
        SIZE_T size, cread;
        BOOL res, eof;

        if (conn->peek_msg)
        {
            *recvd = FUNC4( len, conn->peek_len );
            FUNC3( buf, conn->peek_msg, *recvd );
            conn->peek_len -= *recvd;
            conn->peek_msg += *recvd;

            if (conn->peek_len == 0)
            {
                FUNC2( conn->peek_msg_mem );
                conn->peek_msg_mem = NULL;
                conn->peek_msg = NULL;
            }
            /* check if we have enough data from the peek buffer */
            if (!(flags & MSG_WAITALL) || *recvd == len) return TRUE;
        }
        size = *recvd;

        do {
            res = FUNC5(conn, (BYTE*)buf+size, len-size, &cread, &eof);
            if(!res) {
                FUNC1("read_ssl_chunk failed\n");
                if(!size)
                    return FALSE;
                break;
            }

            if(eof) {
                FUNC0("EOF\n");
                break;
            }

            size += cread;
        }while(!size || ((flags & MSG_WAITALL) && size < len));

        FUNC0("received %ld bytes\n", size);
        *recvd = size;
        return TRUE;
    }
    if ((*recvd = FUNC8( conn->socket, buf, len, flags )) == -1)
    {
        FUNC6( FUNC7( errno ) );
        return FALSE;
    }
    return TRUE;
}
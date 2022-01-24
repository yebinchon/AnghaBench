#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
struct TYPE_8__ {size_t used; scalar_t__ size; scalar_t__ buf; } ;
typedef  TYPE_1__ clientReplyBlock ;
struct TYPE_9__ {size_t bufpos; size_t sentlen; scalar_t__ reply_bytes; int flags; int /*<<< orphan*/  conn; int /*<<< orphan*/  lastinteraction; int /*<<< orphan*/  reply; scalar_t__ buf; } ;
typedef  TYPE_2__ client ;
struct TYPE_10__ {scalar_t__ maxmemory; int /*<<< orphan*/  unixtime; int /*<<< orphan*/  stat_net_output_bytes; } ;

/* Variables and functions */
 int CLIENT_CLOSE_AFTER_REPLY ; 
 int CLIENT_MASTER ; 
 int CLIENT_SLAVE ; 
 scalar_t__ CONN_STATE_CONNECTED ; 
 int C_ERR ; 
 int C_OK ; 
 int /*<<< orphan*/  LL_VERBOSE ; 
 scalar_t__ NET_MAX_WRITES_PER_EVENT ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_4__ server ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 () ; 

int FUNC13(client *c, int handler_installed) {
    ssize_t nwritten = 0, totwritten = 0;
    size_t objlen;
    clientReplyBlock *o;

    while(FUNC0(c)) {
        if (c->bufpos > 0) {
            nwritten = FUNC4(c->conn,c->buf+c->sentlen,c->bufpos-c->sentlen);
            if (nwritten <= 0) break;
            c->sentlen += nwritten;
            totwritten += nwritten;

            /* If the buffer was sent, set bufpos to zero to continue with
             * the remainder of the reply. */
            if ((int)c->sentlen == c->bufpos) {
                c->bufpos = 0;
                c->sentlen = 0;
            }
        } else {
            o = FUNC9(FUNC7(c->reply));
            objlen = o->used;

            if (objlen == 0) {
                c->reply_bytes -= o->size;
                FUNC6(c->reply,FUNC7(c->reply));
                continue;
            }

            nwritten = FUNC4(c->conn, o->buf + c->sentlen, objlen - c->sentlen);
            if (nwritten <= 0) break;
            c->sentlen += nwritten;
            totwritten += nwritten;

            /* If we fully sent the object on head go to the next one */
            if (c->sentlen == objlen) {
                c->reply_bytes -= o->size;
                FUNC6(c->reply,FUNC7(c->reply));
                c->sentlen = 0;
                /* If there are no longer objects in the list, we expect
                 * the count of reply bytes to be exactly zero. */
                if (FUNC8(c->reply) == 0)
                    FUNC10(c->reply_bytes == 0);
            }
        }
        /* Note that we avoid to send more than NET_MAX_WRITES_PER_EVENT
         * bytes, in a single threaded server it's a good idea to serve
         * other clients as well, even if a very large request comes from
         * super fast link that is always able to accept data (in real world
         * scenario think about 'KEYS *' against the loopback interface).
         *
         * However if we are over the maxmemory limit we ignore that and
         * just deliver as much data as it is possible to deliver.
         *
         * Moreover, we also send as much as possible if the client is
         * a slave (otherwise, on high-speed traffic, the replication
         * buffer will grow indefinitely) */
        if (totwritten > NET_MAX_WRITES_PER_EVENT &&
            (server.maxmemory == 0 ||
             FUNC12() < server.maxmemory) &&
            !(c->flags & CLIENT_SLAVE)) break;
    }
    server.stat_net_output_bytes += totwritten;
    if (nwritten == -1) {
        if (FUNC2(c->conn) == CONN_STATE_CONNECTED) {
            nwritten = 0;
        } else {
            FUNC11(LL_VERBOSE,
                "Error writing to client: %s", FUNC1(c->conn));
            FUNC5(c);
            return C_ERR;
        }
    }
    if (totwritten > 0) {
        /* For clients representing masters we don't count sending data
         * as an interaction, since we always send REPLCONF ACK commands
         * that take some time to just fill the socket output buffer.
         * We just rely on data / pings received for timeout detection. */
        if (!(c->flags & CLIENT_MASTER)) c->lastinteraction = server.unixtime;
    }
    if (!FUNC0(c)) {
        c->sentlen = 0;
        /* Note that writeToClient() is called in a threaded way, but
         * adDeleteFileEvent() is not thread safe: however writeToClient()
         * is always called with handler_installed set to 0 from threads
         * so we are fine. */
        if (handler_installed) FUNC3(c->conn, NULL);

        /* Close connection after entire reply has been sent. */
        if (c->flags & CLIENT_CLOSE_AFTER_REPLY) {
            FUNC5(c);
            return C_ERR;
        }
    }
    return C_OK;
}
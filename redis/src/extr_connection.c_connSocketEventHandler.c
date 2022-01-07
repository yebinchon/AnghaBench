
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct aeEventLoop {int dummy; } ;
struct TYPE_5__ {scalar_t__ state; int flags; int * read_handler; int * write_handler; int * conn_handler; int fd; int last_errno; } ;
typedef TYPE_1__ connection ;
struct TYPE_6__ {int el; } ;


 int AE_READABLE ;
 int AE_WRITABLE ;
 int CONN_FLAG_WRITE_BARRIER ;
 scalar_t__ CONN_STATE_CONNECTED ;
 scalar_t__ CONN_STATE_CONNECTING ;
 scalar_t__ CONN_STATE_ERROR ;
 int UNUSED (int) ;
 int aeDeleteFileEvent (int ,int ,int) ;
 int callHandler (TYPE_1__*,int *) ;
 scalar_t__ connGetSocketError (TYPE_1__*) ;
 int errno ;
 TYPE_2__ server ;

__attribute__((used)) static void connSocketEventHandler(struct aeEventLoop *el, int fd, void *clientData, int mask)
{
    UNUSED(el);
    UNUSED(fd);
    connection *conn = clientData;

    if (conn->state == CONN_STATE_CONNECTING &&
            (mask & AE_WRITABLE) && conn->conn_handler) {

        if (connGetSocketError(conn)) {
            conn->last_errno = errno;
            conn->state = CONN_STATE_ERROR;
        } else {
            conn->state = CONN_STATE_CONNECTED;
        }

        if (!conn->write_handler) aeDeleteFileEvent(server.el,conn->fd,AE_WRITABLE);

        if (!callHandler(conn, conn->conn_handler)) return;
        conn->conn_handler = ((void*)0);
    }
    int invert = conn->flags & CONN_FLAG_WRITE_BARRIER;

    int call_write = (mask & AE_WRITABLE) && conn->write_handler;
    int call_read = (mask & AE_READABLE) && conn->read_handler;


    if (!invert && call_read) {
        if (!callHandler(conn, conn->read_handler)) return;
    }

    if (call_write) {
        if (!callHandler(conn, conn->write_handler)) return;
    }


    if (invert && call_read) {
        if (!callHandler(conn, conn->read_handler)) return;
    }
}

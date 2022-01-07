
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ write_handler; TYPE_1__* type; int fd; int flags; } ;
typedef TYPE_2__ connection ;
struct TYPE_8__ {int el; } ;
struct TYPE_6__ {int ae_handler; } ;
typedef scalar_t__ ConnectionCallbackFunc ;


 scalar_t__ AE_ERR ;
 int AE_WRITABLE ;
 int CONN_FLAG_WRITE_BARRIER ;
 int C_ERR ;
 int C_OK ;
 scalar_t__ aeCreateFileEvent (int ,int ,int ,int ,TYPE_2__*) ;
 int aeDeleteFileEvent (int ,int ,int ) ;
 TYPE_3__ server ;

__attribute__((used)) static int connSocketSetWriteHandler(connection *conn, ConnectionCallbackFunc func, int barrier) {
    if (func == conn->write_handler) return C_OK;

    conn->write_handler = func;
    if (barrier)
        conn->flags |= CONN_FLAG_WRITE_BARRIER;
    else
        conn->flags &= ~CONN_FLAG_WRITE_BARRIER;
    if (!conn->write_handler)
        aeDeleteFileEvent(server.el,conn->fd,AE_WRITABLE);
    else
        if (aeCreateFileEvent(server.el,conn->fd,AE_WRITABLE,
                    conn->type->ae_handler,conn) == AE_ERR) return C_ERR;
    return C_OK;
}

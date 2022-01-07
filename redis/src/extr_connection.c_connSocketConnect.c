
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int fd; TYPE_1__* type; int conn_handler; int state; int last_errno; } ;
typedef TYPE_2__ connection ;
struct TYPE_8__ {int el; } ;
struct TYPE_6__ {int ae_handler; } ;
typedef int ConnectionCallbackFunc ;


 int AE_WRITABLE ;
 int CONN_STATE_CONNECTING ;
 int CONN_STATE_ERROR ;
 int C_ERR ;
 int C_OK ;
 int aeCreateFileEvent (int ,int,int ,int ,TYPE_2__*) ;
 int anetTcpNonBlockBestEffortBindConnect (int *,char const*,int,char const*) ;
 int errno ;
 TYPE_3__ server ;

__attribute__((used)) static int connSocketConnect(connection *conn, const char *addr, int port, const char *src_addr,
        ConnectionCallbackFunc connect_handler) {
    int fd = anetTcpNonBlockBestEffortBindConnect(((void*)0),addr,port,src_addr);
    if (fd == -1) {
        conn->state = CONN_STATE_ERROR;
        conn->last_errno = errno;
        return C_ERR;
    }

    conn->fd = fd;
    conn->state = CONN_STATE_CONNECTING;

    conn->conn_handler = connect_handler;
    aeCreateFileEvent(server.el, conn->fd, AE_WRITABLE,
            conn->type->ae_handler, conn);

    return C_OK;
}

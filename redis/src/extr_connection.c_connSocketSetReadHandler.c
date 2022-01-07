
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ read_handler; TYPE_1__* type; int fd; } ;
typedef TYPE_2__ connection ;
struct TYPE_8__ {int el; } ;
struct TYPE_6__ {int ae_handler; } ;
typedef scalar_t__ ConnectionCallbackFunc ;


 scalar_t__ AE_ERR ;
 int AE_READABLE ;
 int C_ERR ;
 int C_OK ;
 scalar_t__ aeCreateFileEvent (int ,int ,int ,int ,TYPE_2__*) ;
 int aeDeleteFileEvent (int ,int ,int ) ;
 TYPE_3__ server ;

__attribute__((used)) static int connSocketSetReadHandler(connection *conn, ConnectionCallbackFunc func) {
    if (func == conn->read_handler) return C_OK;

    conn->read_handler = func;
    if (!conn->read_handler)
        aeDeleteFileEvent(server.el,conn->fd,AE_READABLE);
    else
        if (aeCreateFileEvent(server.el,conn->fd,
                    AE_READABLE,conn->type->ae_handler,conn) == AE_ERR) return C_ERR;
    return C_OK;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ state; } ;
typedef TYPE_1__ connection ;
typedef int ConnectionCallbackFunc ;


 scalar_t__ CONN_STATE_ACCEPTING ;
 scalar_t__ CONN_STATE_CONNECTED ;
 int C_ERR ;
 int C_OK ;
 int callHandler (TYPE_1__*,int ) ;

__attribute__((used)) static int connSocketAccept(connection *conn, ConnectionCallbackFunc accept_handler) {
    if (conn->state != CONN_STATE_ACCEPTING) return C_ERR;
    conn->state = CONN_STATE_CONNECTED;
    if (!callHandler(conn, accept_handler)) return C_ERR;
    return C_OK;
}

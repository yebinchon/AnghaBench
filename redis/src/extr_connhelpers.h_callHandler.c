
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; } ;
typedef TYPE_1__ connection ;
typedef int (* ConnectionCallbackFunc ) (TYPE_1__*) ;


 int CONN_FLAG_CLOSE_SCHEDULED ;
 int CONN_FLAG_IN_HANDLER ;
 int connClose (TYPE_1__*) ;

__attribute__((used)) static inline int callHandler(connection *conn, ConnectionCallbackFunc handler) {
    conn->flags |= CONN_FLAG_IN_HANDLER;
    if (handler) handler(conn);
    conn->flags &= ~CONN_FLAG_IN_HANDLER;
    if (conn->flags & CONN_FLAG_CLOSE_SCHEDULED) {
        connClose(conn);
        return 0;
    }
    return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ connection ;


 int CONN_FLAG_CLOSE_SCHEDULED ;
 int CONN_FLAG_IN_HANDLER ;
 int connClose (TYPE_1__*) ;

__attribute__((used)) static inline int exitHandler(connection *conn) {
    conn->flags &= ~CONN_FLAG_IN_HANDLER;
    if (conn->flags & CONN_FLAG_CLOSE_SCHEDULED) {
        connClose(conn);
        return 0;
    }
    return 1;
}

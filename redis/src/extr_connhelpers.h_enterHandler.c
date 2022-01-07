
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ connection ;


 int CONN_FLAG_IN_HANDLER ;

__attribute__((used)) static inline void enterHandler(connection *conn) {
    conn->flags |= CONN_FLAG_IN_HANDLER;
}

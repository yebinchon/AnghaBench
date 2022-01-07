
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ connection ;


 int anetSendTimeout (int *,int ,long long) ;

int connSendTimeout(connection *conn, long long ms) {
    return anetSendTimeout(((void*)0), conn->fd, ms);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int socklen_t ;
typedef int sockerr ;
struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ connection ;


 int SOL_SOCKET ;
 int SO_ERROR ;
 int errno ;
 int getsockopt (int ,int ,int ,int*,int*) ;

int connGetSocketError(connection *conn) {
    int sockerr = 0;
    socklen_t errlen = sizeof(sockerr);

    if (getsockopt(conn->fd, SOL_SOCKET, SO_ERROR, &sockerr, &errlen) == -1)
        sockerr = errno;
    return sockerr;
}

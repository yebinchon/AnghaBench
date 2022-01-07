
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int delayed; int fd; } ;
typedef TYPE_1__ connection ;
typedef int aeEventLoop ;


 int AE_NOMORE ;
 int AE_WRITABLE ;
 int aeCreateFileEvent (int *,int ,int ,int ,TYPE_1__*) ;
 int socket_writeable ;

__attribute__((used)) static int delay_request(aeEventLoop *loop, long long id, void *data) {
    connection *c = data;
    c->delayed = 0;
    aeCreateFileEvent(loop, c->fd, AE_WRITABLE, socket_writeable, c);
    return AE_NOMORE;
}

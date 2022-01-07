
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef union sockaddr_union {int dummy; } sockaddr_union ;
typedef int uint32_t ;
typedef int sd_event_source ;
struct TYPE_3__ {int size; int type; } ;
typedef TYPE_1__ SocketAddress ;
typedef int RemoteServer ;


 int EAGAIN ;
 int SOCK_STREAM ;
 int accept_connection (char*,int,TYPE_1__*,char**) ;
 int journal_remote_add_source (int *,int,char*,int) ;

__attribute__((used)) static int dispatch_raw_connection_event(
                sd_event_source *event,
                int fd,
                uint32_t revents,
                void *userdata) {

        RemoteServer *s = userdata;
        int fd2;
        SocketAddress addr = {
                .size = sizeof(union sockaddr_union),
                .type = SOCK_STREAM,
        };
        char *hostname = ((void*)0);

        fd2 = accept_connection("raw", fd, &addr, &hostname);
        if (fd2 == -EAGAIN)
                return 0;
        if (fd2 < 0)
                return fd2;

        return journal_remote_add_source(s, fd2, hostname, 1);
}

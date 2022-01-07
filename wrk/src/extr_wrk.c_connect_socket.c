
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int connect; } ;
struct TYPE_10__ {TYPE_2__ errors; struct aeEventLoop* loop; struct addrinfo* addr; } ;
typedef TYPE_3__ thread ;
struct aeEventLoop {int dummy; } ;
struct addrinfo {int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ai_family; } ;
typedef int flags ;
struct TYPE_8__ {TYPE_4__* data; } ;
struct TYPE_11__ {int fd; TYPE_1__ parser; } ;
typedef TYPE_4__ connection ;


 scalar_t__ AE_OK ;
 int AE_READABLE ;
 int AE_WRITABLE ;
 scalar_t__ EINPROGRESS ;
 int F_GETFL ;
 int F_SETFL ;
 int IPPROTO_TCP ;
 int O_NONBLOCK ;
 int TCP_NODELAY ;
 scalar_t__ aeCreateFileEvent (struct aeEventLoop*,int,int,int ,TYPE_4__*) ;
 int close (int) ;
 int connect (int,int ,int ) ;
 scalar_t__ errno ;
 int fcntl (int,int ,int) ;
 int setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;
 int socket_connected ;

__attribute__((used)) static int connect_socket(thread *thread, connection *c) {
    struct addrinfo *addr = thread->addr;
    struct aeEventLoop *loop = thread->loop;
    int fd, flags;

    fd = socket(addr->ai_family, addr->ai_socktype, addr->ai_protocol);

    flags = fcntl(fd, F_GETFL, 0);
    fcntl(fd, F_SETFL, flags | O_NONBLOCK);

    if (connect(fd, addr->ai_addr, addr->ai_addrlen) == -1) {
        if (errno != EINPROGRESS) goto error;
    }

    flags = 1;
    setsockopt(fd, IPPROTO_TCP, TCP_NODELAY, &flags, sizeof(flags));

    flags = AE_READABLE | AE_WRITABLE;
    if (aeCreateFileEvent(loop, fd, flags, socket_connected, c) == AE_OK) {
        c->parser.data = c;
        c->fd = fd;
        return fd;
    }

  error:
    thread->errors.connect++;
    close(fd);
    return -1;
}

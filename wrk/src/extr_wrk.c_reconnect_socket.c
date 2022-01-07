
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int loop; } ;
typedef TYPE_1__ thread ;
struct TYPE_10__ {int fd; } ;
typedef TYPE_2__ connection ;
struct TYPE_11__ {int (* close ) (TYPE_2__*) ;} ;


 int AE_READABLE ;
 int AE_WRITABLE ;
 int aeDeleteFileEvent (int ,int ,int) ;
 int close (int ) ;
 int connect_socket (TYPE_1__*,TYPE_2__*) ;
 TYPE_4__ sock ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static int reconnect_socket(thread *thread, connection *c) {
    aeDeleteFileEvent(thread->loop, c->fd, AE_WRITABLE | AE_READABLE);
    sock.close(c);
    close(c->fd);
    return connect_socket(thread, c);
}

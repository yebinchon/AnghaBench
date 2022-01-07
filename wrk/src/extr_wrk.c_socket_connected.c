
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_5__* thread; scalar_t__ written; int parser; } ;
typedef TYPE_2__ connection ;
typedef int aeEventLoop ;
struct TYPE_13__ {int host; } ;
struct TYPE_9__ {int connect; } ;
struct TYPE_12__ {TYPE_1__ errors; int loop; } ;
struct TYPE_11__ {int (* connect ) (TYPE_2__*,int ) ;} ;


 int AE_READABLE ;
 int AE_WRITABLE ;

 int HTTP_RESPONSE ;


 int aeCreateFileEvent (int ,int,int ,int ,TYPE_2__*) ;
 TYPE_7__ cfg ;
 int http_parser_init (int *,int ) ;
 int reconnect_socket (TYPE_5__*,TYPE_2__*) ;
 TYPE_4__ sock ;
 int socket_readable ;
 int socket_writeable ;
 int stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static void socket_connected(aeEventLoop *loop, int fd, void *data, int mask) {
    connection *c = data;

    switch (sock.connect(c, cfg.host)) {
        case 129: break;
        case 130: goto error;
        case 128: return;
    }

    http_parser_init(&c->parser, HTTP_RESPONSE);
    c->written = 0;

    aeCreateFileEvent(c->thread->loop, fd, AE_READABLE, socket_readable, c);
    aeCreateFileEvent(c->thread->loop, fd, AE_WRITABLE, socket_writeable, c);

    return;

  error:
    c->thread->errors.connect++;
    reconnect_socket(c->thread, c);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_10__ {int write; } ;
struct TYPE_11__ {TYPE_1__ errors; int L; } ;
typedef TYPE_2__ thread ;
struct TYPE_12__ {int written; char* request; size_t length; int pending; int start; scalar_t__ delayed; TYPE_2__* thread; } ;
typedef TYPE_3__ connection ;
typedef int aeEventLoop ;
struct TYPE_14__ {int pipeline; scalar_t__ dynamic; } ;
struct TYPE_13__ {int (* write ) (TYPE_3__*,char*,size_t,size_t*) ;} ;


 int AE_WRITABLE ;



 int aeCreateTimeEvent (int *,int ,int ,TYPE_3__*,int *) ;
 int aeDeleteFileEvent (int *,int,int ) ;
 TYPE_8__ cfg ;
 int delay_request ;
 int reconnect_socket (TYPE_2__*,TYPE_3__*) ;
 int script_delay (int ) ;
 int script_request (int ,char**,size_t*) ;
 TYPE_5__ sock ;
 int stub1 (TYPE_3__*,char*,size_t,size_t*) ;
 int time_us () ;

__attribute__((used)) static void socket_writeable(aeEventLoop *loop, int fd, void *data, int mask) {
    connection *c = data;
    thread *thread = c->thread;

    if (c->delayed) {
        uint64_t delay = script_delay(thread->L);
        aeDeleteFileEvent(loop, fd, AE_WRITABLE);
        aeCreateTimeEvent(loop, delay, delay_request, c, ((void*)0));
        return;
    }

    if (!c->written) {
        if (cfg.dynamic) {
            script_request(thread->L, &c->request, &c->length);
        }
        c->start = time_us();
        c->pending = cfg.pipeline;
    }

    char *buf = c->request + c->written;
    size_t len = c->length - c->written;
    size_t n;

    switch (sock.write(c, buf, len, &n)) {
        case 129: break;
        case 130: goto error;
        case 128: return;
    }

    c->written += n;
    if (c->written == c->length) {
        c->written = 0;
        aeDeleteFileEvent(loop, fd, AE_WRITABLE);
    }

    return;

  error:
    thread->errors.write++;
    reconnect_socket(thread, c);
}

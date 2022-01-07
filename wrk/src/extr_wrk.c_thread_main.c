
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_9__ {int connections; TYPE_2__* cs; int start; int * loop; int L; } ;
typedef TYPE_1__ thread ;
struct TYPE_10__ {char* request; size_t length; int delayed; int * ssl; TYPE_1__* thread; } ;
typedef TYPE_2__ connection ;
typedef int aeEventLoop ;
struct TYPE_11__ {int delay; scalar_t__ ctx; int dynamic; } ;


 int RECORD_INTERVAL_MS ;
 int * SSL_new (scalar_t__) ;
 int aeCreateTimeEvent (int *,int ,int ,TYPE_1__*,int *) ;
 int aeDeleteEventLoop (int *) ;
 int aeMain (int *) ;
 TYPE_7__ cfg ;
 int connect_socket (TYPE_1__*,TYPE_2__*) ;
 int record_rate ;
 int script_request (int ,char**,size_t*) ;
 int time_us () ;
 TYPE_2__* zcalloc (int) ;
 int zfree (TYPE_2__*) ;

void *thread_main(void *arg) {
    thread *thread = arg;

    char *request = ((void*)0);
    size_t length = 0;

    if (!cfg.dynamic) {
        script_request(thread->L, &request, &length);
    }

    thread->cs = zcalloc(thread->connections * sizeof(connection));
    connection *c = thread->cs;

    for (uint64_t i = 0; i < thread->connections; i++, c++) {
        c->thread = thread;
        c->ssl = cfg.ctx ? SSL_new(cfg.ctx) : ((void*)0);
        c->request = request;
        c->length = length;
        c->delayed = cfg.delay;
        connect_socket(thread, c);
    }

    aeEventLoop *loop = thread->loop;
    aeCreateTimeEvent(loop, RECORD_INTERVAL_MS, record_rate, thread, ((void*)0));

    thread->start = time_us();
    aeMain(loop);

    aeDeleteEventLoop(loop);
    zfree(thread->cs);

    return ((void*)0);
}

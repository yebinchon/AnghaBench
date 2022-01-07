
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct instance {struct context* ctx; } ;
struct context {int dummy; } ;


 int conn_deinit () ;
 int conn_init () ;
 struct context* core_ctx_create (struct instance*) ;
 int mbuf_deinit () ;
 int mbuf_init (struct instance*) ;
 int msg_deinit () ;
 int msg_init () ;

struct context *
core_start(struct instance *nci)
{
    struct context *ctx;

    mbuf_init(nci);
    msg_init();
    conn_init();

    ctx = core_ctx_create(nci);
    if (ctx != ((void*)0)) {
        nci->ctx = ctx;
        return ctx;
    }

    conn_deinit();
    msg_deinit();
    mbuf_deinit();

    return ((void*)0);
}

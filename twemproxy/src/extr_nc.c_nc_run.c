
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct instance {int dummy; } ;
struct context {int dummy; } ;
typedef scalar_t__ rstatus_t ;


 scalar_t__ NC_OK ;
 scalar_t__ core_loop (struct context*) ;
 struct context* core_start (struct instance*) ;
 int core_stop (struct context*) ;

__attribute__((used)) static void
nc_run(struct instance *nci)
{
    rstatus_t status;
    struct context *ctx;

    ctx = core_start(nci);
    if (ctx == ((void*)0)) {
        return;
    }


    for (;;) {
        status = core_loop(ctx);
        if (status != NC_OK) {
            break;
        }
    }

    core_stop(ctx);
}

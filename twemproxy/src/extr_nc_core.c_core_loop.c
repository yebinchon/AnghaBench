
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {int stats; int timeout; int evb; } ;
typedef int rstatus_t ;


 int NC_OK ;
 int core_timeout (struct context*) ;
 int event_wait (int ,int ) ;
 int stats_swap (int ) ;

rstatus_t
core_loop(struct context *ctx)
{
    int nsd;

    nsd = event_wait(ctx->evb, ctx->timeout);
    if (nsd < 0) {
        return nsd;
    }

    core_timeout(ctx);

    stats_swap(ctx->stats);

    return NC_OK;
}

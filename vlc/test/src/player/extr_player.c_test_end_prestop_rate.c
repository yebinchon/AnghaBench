
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ size; } ;
typedef TYPE_2__ vec_on_rate_changed ;
struct TYPE_4__ {TYPE_2__ on_rate_changed; } ;
struct ctx {float rate; int wait; int player; TYPE_1__ report; } ;


 float VEC_LAST (TYPE_2__*) ;
 int assert (int) ;
 int vlc_player_CondWait (int ,int *) ;

__attribute__((used)) static void
test_end_prestop_rate(struct ctx *ctx)
{
    if (ctx->rate != 1.0f)
    {
        vec_on_rate_changed *vec = &ctx->report.on_rate_changed;
        while (vec->size == 0)
            vlc_player_CondWait(ctx->player, &ctx->wait);
        assert(vec->size > 0);
        assert(VEC_LAST(vec) == ctx->rate);
    }

}

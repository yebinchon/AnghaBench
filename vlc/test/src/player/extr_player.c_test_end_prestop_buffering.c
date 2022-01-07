
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int size; float* data; } ;
typedef TYPE_2__ vec_on_buffering_changed ;
struct TYPE_4__ {TYPE_2__ on_buffering_changed; } ;
struct ctx {int wait; int player; TYPE_1__ report; } ;


 float VEC_LAST (TYPE_2__*) ;
 int assert (int) ;
 int vlc_player_CondWait (int ,int *) ;

__attribute__((used)) static void
test_end_prestop_buffering(struct ctx *ctx)
{
    vec_on_buffering_changed *vec = &ctx->report.on_buffering_changed;
    while (vec->size == 0 || VEC_LAST(vec) != 1.0f)
        vlc_player_CondWait(ctx->player, &ctx->wait);
    assert(vec->size >= 2);
    assert(vec->data[0] == 0.0f);
}

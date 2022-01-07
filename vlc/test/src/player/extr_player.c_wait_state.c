
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ size; int* data; } ;
typedef TYPE_2__ vec_on_state_changed ;
struct TYPE_3__ {TYPE_2__ on_state_changed; } ;
struct ctx {scalar_t__ last_state_idx; int wait; int player; TYPE_1__ report; } ;
typedef enum vlc_player_state { ____Placeholder_vlc_player_state } vlc_player_state ;


 int vlc_player_CondWait (int ,int *) ;

__attribute__((used)) static inline void
wait_state(struct ctx *ctx, enum vlc_player_state state)
{
    vec_on_state_changed *vec = &ctx->report.on_state_changed;
    for (;;)
    {
        while (vec->size <= ctx->last_state_idx)
            vlc_player_CondWait(ctx->player, &ctx->wait);
        for (size_t i = ctx->last_state_idx; i < vec->size; ++i)
            if ((vec)->data[i] == state)
            {
                ctx->last_state_idx = i + 1;
                return;
            }
        ctx->last_state_idx = vec->size;
    }
}

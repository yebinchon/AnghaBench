
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_player_t ;
struct TYPE_8__ {scalar_t__ size; scalar_t__* data; } ;
typedef TYPE_4__ vec_on_length_changed ;
struct TYPE_6__ {scalar_t__ length; } ;
struct TYPE_5__ {scalar_t__ size; } ;
struct TYPE_7__ {TYPE_4__ on_length_changed; } ;
struct ctx {TYPE_2__ params; int wait; int * player; TYPE_1__ played_medias; TYPE_3__ report; } ;


 int assert (int) ;
 int vlc_player_CondWait (int *,int *) ;
 scalar_t__ vlc_player_GetLength (int *) ;

__attribute__((used)) static void
test_end_prestop_length(struct ctx *ctx)
{
    vlc_player_t *player = ctx->player;
    vec_on_length_changed *vec = &ctx->report.on_length_changed;
    while (vec->size != ctx->played_medias.size)
        vlc_player_CondWait(ctx->player, &ctx->wait);
    for (size_t i = 0; i < vec->size; ++i)
        assert(vec->data[i] == ctx->params.length);
    assert(ctx->params.length == vlc_player_GetLength(player));
}

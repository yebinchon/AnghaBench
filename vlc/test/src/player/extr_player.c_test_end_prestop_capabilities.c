
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_player_t ;
struct TYPE_8__ {scalar_t__ size; } ;
typedef TYPE_3__ vec_on_capabilities_changed ;
struct TYPE_7__ {scalar_t__ can_seek; scalar_t__ can_pause; } ;
struct TYPE_6__ {TYPE_3__ on_capabilities_changed; } ;
struct ctx {TYPE_2__ params; int wait; int * player; TYPE_1__ report; } ;
struct TYPE_9__ {int new_caps; } ;


 TYPE_4__ VEC_LAST (TYPE_3__*) ;
 int VLC_PLAYER_CAP_PAUSE ;
 int VLC_PLAYER_CAP_SEEK ;
 int assert (int) ;
 scalar_t__ vlc_player_CanPause (int *) ;
 scalar_t__ vlc_player_CanSeek (int *) ;
 int vlc_player_CondWait (int *,int *) ;

__attribute__((used)) static void
test_end_prestop_capabilities(struct ctx *ctx)
{
    vlc_player_t *player = ctx->player;
    vec_on_capabilities_changed *vec = &ctx->report.on_capabilities_changed;
    while (vec->size == 0)
        vlc_player_CondWait(ctx->player, &ctx->wait);
    int new_caps = VEC_LAST(vec).new_caps;
    assert(vlc_player_CanSeek(player) == ctx->params.can_seek
        && !!(new_caps & VLC_PLAYER_CAP_SEEK) == ctx->params.can_seek);
    assert(vlc_player_CanPause(player) == ctx->params.can_pause
        && !!(new_caps & VLC_PLAYER_CAP_PAUSE) == ctx->params.can_pause);
}

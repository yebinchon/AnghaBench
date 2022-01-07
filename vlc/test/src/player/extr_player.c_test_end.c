
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_player_t ;
struct TYPE_4__ {int error; } ;
struct TYPE_3__ {int on_state_changed; } ;
struct ctx {TYPE_2__ params; TYPE_1__ report; int * player; } ;


 scalar_t__ VEC_LAST (int *) ;
 scalar_t__ VLC_PLAYER_STATE_STOPPED ;
 int assert (int ) ;
 int ctx_reset (struct ctx*) ;
 int player_set_rate (struct ctx*,float) ;
 int test_end_poststop_medias (struct ctx*) ;
 int test_end_poststop_programs (struct ctx*) ;
 int test_end_poststop_state (struct ctx*) ;
 int test_end_poststop_titles (struct ctx*) ;
 int test_end_poststop_tracks (struct ctx*) ;
 int test_end_poststop_vouts (struct ctx*) ;
 int * vlc_player_GetCurrentMedia (int *) ;
 int vlc_player_SetStartPaused (int *,int) ;
 int vlc_player_Stop (int *) ;
 int wait_state (struct ctx*,scalar_t__) ;

__attribute__((used)) static void
test_end(struct ctx *ctx)
{
    vlc_player_t *player = ctx->player;


    const bool wait_stopped =
        VEC_LAST(&ctx->report.on_state_changed) != VLC_PLAYER_STATE_STOPPED;

    vlc_player_Stop(player);
    assert(vlc_player_GetCurrentMedia(player) != ((void*)0));
    if (wait_stopped)
        wait_state(ctx, VLC_PLAYER_STATE_STOPPED);

    if (!ctx->params.error)
    {
        test_end_poststop_state(ctx);
        test_end_poststop_tracks(ctx);
        test_end_poststop_programs(ctx);
        test_end_poststop_titles(ctx);
        test_end_poststop_vouts(ctx);
    }
    test_end_poststop_medias(ctx);

    player_set_rate(ctx, 1.0f);
    vlc_player_SetStartPaused(player, 0);

    ctx_reset(ctx);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_player_t ;
struct TYPE_4__ {scalar_t__ size; } ;
typedef TYPE_2__ vec_on_capabilities_changed ;
struct media_params {int can_pause; } ;
struct TYPE_3__ {TYPE_2__ on_capabilities_changed; } ;
struct ctx {int wait; TYPE_1__ report; int * player; } ;


 struct media_params DEFAULT_MEDIA_PARAMS (int ) ;
 int VLC_PLAYER_STATE_STOPPED ;
 int VLC_TICK_FROM_SEC (int) ;
 int assert_normal_state (struct ctx*) ;
 int player_set_next_mock_media (struct ctx*,char*,struct media_params*) ;
 int player_start (struct ctx*) ;
 int test_end (struct ctx*) ;
 int test_log (char*) ;
 int test_prestop (struct ctx*) ;
 int vlc_player_ChangeRate (int *,float) ;
 int vlc_player_CondWait (int *,int *) ;
 int vlc_player_Pause (int *) ;
 int wait_state (struct ctx*,int ) ;

__attribute__((used)) static void
test_capabilities_pause(struct ctx *ctx)
{
    test_log("capabilites_pause\n");
    vlc_player_t *player = ctx->player;

    struct media_params params = DEFAULT_MEDIA_PARAMS(VLC_TICK_FROM_SEC(1));
    params.can_pause = 0;
    player_set_next_mock_media(ctx, "media1", &params);

    player_start(ctx);

    {
        vec_on_capabilities_changed *vec = &ctx->report.on_capabilities_changed;
        while (vec->size == 0)
            vlc_player_CondWait(player, &ctx->wait);
    }


    vlc_player_Pause(player);
    vlc_player_ChangeRate(player, 32.f);

    test_prestop(ctx);

    wait_state(ctx, VLC_PLAYER_STATE_STOPPED);
    assert_normal_state(ctx);

    test_end(ctx);
}

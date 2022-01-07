
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_player_t ;
struct TYPE_5__ {scalar_t__ size; } ;
typedef TYPE_2__ vec_on_error_changed ;
struct media_params {int error; } ;
struct TYPE_4__ {TYPE_2__ on_error_changed; } ;
struct ctx {int wait; TYPE_1__ report; int * player; } ;


 struct media_params DEFAULT_MEDIA_PARAMS (int ) ;
 scalar_t__ VEC_LAST (TYPE_2__*) ;
 scalar_t__ VLC_PLAYER_ERROR_NONE ;
 int VLC_PLAYER_STATE_STOPPED ;
 int VLC_TICK_FROM_SEC (int) ;
 int player_set_next_mock_media (struct ctx*,char*,struct media_params*) ;
 int player_start (struct ctx*) ;
 int test_end (struct ctx*) ;
 int test_log (char*) ;
 int vlc_player_CondWait (int *,int *) ;
 int wait_state (struct ctx*,int ) ;

__attribute__((used)) static void
test_error(struct ctx *ctx)
{
    test_log("error\n");
    vlc_player_t *player = ctx->player;

    struct media_params params = DEFAULT_MEDIA_PARAMS(VLC_TICK_FROM_SEC(1));
    params.error = 1;
    player_set_next_mock_media(ctx, "media1", &params);

    player_start(ctx);

    {
        vec_on_error_changed *vec = &ctx->report.on_error_changed;
        while (vec->size == 0 || VEC_LAST(vec) == VLC_PLAYER_ERROR_NONE)
            vlc_player_CondWait(player, &ctx->wait);
    }
    wait_state(ctx, VLC_PLAYER_STATE_STOPPED);

    test_end(ctx);
}

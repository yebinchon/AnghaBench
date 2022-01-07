
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_player_t ;
struct TYPE_6__ {int size; scalar_t__* data; } ;
typedef TYPE_2__ vec_on_state_changed ;
struct TYPE_7__ {scalar_t__ size; } ;
typedef TYPE_3__ vec_on_position_changed ;
struct media_params {int dummy; } ;
struct TYPE_5__ {TYPE_2__ on_state_changed; TYPE_3__ on_position_changed; } ;
struct ctx {int wait; TYPE_1__ report; int * player; } ;


 struct media_params DEFAULT_MEDIA_PARAMS (int ) ;
 scalar_t__ VEC_LAST (TYPE_2__*) ;
 scalar_t__ VLC_PLAYER_STATE_PAUSED ;
 scalar_t__ VLC_PLAYER_STATE_PLAYING ;
 scalar_t__ VLC_PLAYER_STATE_STARTED ;
 int VLC_TICK_FROM_SEC (int) ;
 int assert (int) ;
 int player_set_next_mock_media (struct ctx*,char*,struct media_params*) ;
 int player_start (struct ctx*) ;
 int test_end (struct ctx*) ;
 int test_log (char*) ;
 int vlc_player_CondWait (int *,int *) ;
 int vlc_player_Pause (int *) ;
 int vlc_player_Resume (int *) ;
 int vlc_player_SetStartPaused (int *,int) ;

__attribute__((used)) static void
test_pause(struct ctx *ctx)
{
    test_log("pause\n");
    vlc_player_t *player = ctx->player;

    struct media_params params = DEFAULT_MEDIA_PARAMS(VLC_TICK_FROM_SEC(10));
    player_set_next_mock_media(ctx, "media1", &params);


    vlc_player_SetStartPaused(player, 1);
    player_start(ctx);
    {
        vec_on_state_changed *vec = &ctx->report.on_state_changed;
        while (vec->size == 0 || VEC_LAST(vec) != VLC_PLAYER_STATE_PAUSED)
            vlc_player_CondWait(player, &ctx->wait);
        assert(vec->size == 3);
        assert(vec->data[0] == VLC_PLAYER_STATE_STARTED);
        assert(vec->data[1] == VLC_PLAYER_STATE_PLAYING);
        assert(vec->data[2] == VLC_PLAYER_STATE_PAUSED);
    }

    {
        vec_on_position_changed *vec = &ctx->report.on_position_changed;
        assert(vec->size == 0);
    }


    vlc_player_Resume(player);

    {
        vec_on_state_changed *vec = &ctx->report.on_state_changed;
        while (VEC_LAST(vec) != VLC_PLAYER_STATE_PLAYING)
            vlc_player_CondWait(player, &ctx->wait);
        assert(vec->size == 4);
    }

    {
        vec_on_position_changed *vec = &ctx->report.on_position_changed;
        while (vec->size == 0)
            vlc_player_CondWait(player, &ctx->wait);
    }


    vlc_player_Pause(player);

    {
        vec_on_state_changed *vec = &ctx->report.on_state_changed;
        while (VEC_LAST(vec) != VLC_PLAYER_STATE_PAUSED)
            vlc_player_CondWait(player, &ctx->wait);
        assert(vec->size == 5);
    }

    test_end(ctx);
}

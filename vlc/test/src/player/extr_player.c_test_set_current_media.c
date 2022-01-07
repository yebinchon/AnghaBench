
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_player_t ;
struct TYPE_5__ {int size; } ;
typedef TYPE_2__ vec_on_current_media_changed ;
struct media_params {int dummy; } ;
struct TYPE_4__ {TYPE_2__ on_current_media_changed; } ;
struct ctx {TYPE_2__ played_medias; int extra_start_count; int wait; TYPE_1__ report; int * player; } ;
typedef int input_item_t ;


 size_t ARRAY_SIZE (char const**) ;
 struct media_params DEFAULT_MEDIA_PARAMS (int ) ;
 int * VEC_LAST (TYPE_2__*) ;
 int VLC_PLAYER_STATE_PLAYING ;
 int VLC_PLAYER_STATE_STARTED ;
 int VLC_PLAYER_STATE_STOPPED ;
 int VLC_TICK_FROM_MS (int) ;
 int assert (int) ;
 int assert_media_name (int *,char const*) ;
 int assert_normal_state (struct ctx*) ;
 int player_set_current_mock_media (struct ctx*,char const*,struct media_params*,int) ;
 int player_start (struct ctx*) ;
 int test_end (struct ctx*) ;
 int test_log (char*) ;
 int test_prestop (struct ctx*) ;
 int vlc_player_CondWait (int *,int *) ;
 int * vlc_player_GetCurrentMedia (int *) ;
 int wait_state (struct ctx*,int ) ;

__attribute__((used)) static void
test_set_current_media(struct ctx *ctx)
{
    test_log("current_media\n");
    const char *media_names[] = { "media1", "media2", "media3" };
    const size_t media_count = ARRAY_SIZE(media_names);

    vlc_player_t *player = ctx->player;
    struct media_params params = DEFAULT_MEDIA_PARAMS(VLC_TICK_FROM_MS(100));

    player_set_current_mock_media(ctx, media_names[0], &params, 0);
    player_start(ctx);

    wait_state(ctx, VLC_PLAYER_STATE_PLAYING);



    {
        vec_on_current_media_changed *vec = &ctx->report.on_current_media_changed;
        assert(vec->size == 1);
        for (size_t i = 1; i <= media_count; ++i)
        {
            while (vec->size != i)
                vlc_player_CondWait(player, &ctx->wait);

            input_item_t *last_media = VEC_LAST(vec);
            assert(last_media);
            assert(last_media == vlc_player_GetCurrentMedia(player));
            assert(last_media == VEC_LAST(&ctx->played_medias));
            assert_media_name(last_media, media_names[i - 1]);

            if (i < media_count)
            {



                player_set_current_mock_media(ctx, "ignored", &params, 1);
                assert(vlc_player_GetCurrentMedia(player) == last_media);


                player_set_current_mock_media(ctx, media_names[i], &params, 0);
            }
        }
    }

    test_prestop(ctx);
    wait_state(ctx, VLC_PLAYER_STATE_STOPPED);
    assert_normal_state(ctx);


    player_start(ctx);
    ctx->extra_start_count++;


    wait_state(ctx, VLC_PLAYER_STATE_STARTED);
    wait_state(ctx, VLC_PLAYER_STATE_STOPPED);

    assert_normal_state(ctx);


    player_set_current_mock_media(ctx, media_names[0], &params, 0);
    assert(vlc_player_GetCurrentMedia(player) == VEC_LAST(&ctx->played_medias));

    player_start(ctx);

    wait_state(ctx, VLC_PLAYER_STATE_STARTED);
    wait_state(ctx, VLC_PLAYER_STATE_STOPPED);

    test_end(ctx);
}

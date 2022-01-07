
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_player_t ;
struct TYPE_4__ {scalar_t__ size; } ;
typedef TYPE_2__ vec_on_vout_changed ;
struct media_params {int dummy; } ;
struct TYPE_3__ {TYPE_2__ on_vout_changed; } ;
struct ctx {TYPE_1__ report; int * player; } ;
typedef int audio_output_t ;


 struct media_params DEFAULT_MEDIA_PARAMS (int ) ;
 int VLC_PLAYER_STATE_STOPPING ;
 int VLC_TICK_FROM_MS (int) ;
 int assert (int) ;
 int player_set_current_mock_media (struct ctx*,char*,struct media_params*,int) ;
 int player_start (struct ctx*) ;
 int test_end (struct ctx*) ;
 int test_log (char*) ;
 int * vlc_player_aout_Hold (int *) ;
 int wait_state (struct ctx*,int ) ;

__attribute__((used)) static void
test_no_outputs(struct ctx *ctx)
{
    test_log("test_no_outputs\n");
    vlc_player_t *player = ctx->player;

    struct media_params params = DEFAULT_MEDIA_PARAMS(VLC_TICK_FROM_MS(10));
    player_set_current_mock_media(ctx, "media1", &params, 0);
    player_start(ctx);

    wait_state(ctx, VLC_PLAYER_STATE_STOPPING);
    {
        vec_on_vout_changed *vec = &ctx->report.on_vout_changed;
        assert(vec->size == 0);
    }

    audio_output_t *aout = vlc_player_aout_Hold(player);
    assert(!aout);

    test_end(ctx);
}

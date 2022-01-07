
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vout_thread_t ;
typedef int vlc_player_t ;
struct TYPE_6__ {int size; TYPE_2__* data; } ;
typedef TYPE_3__ vec_on_vout_changed ;
struct media_params {int dummy; } ;
struct TYPE_4__ {TYPE_3__ on_vout_changed; } ;
struct ctx {TYPE_1__ report; int * player; } ;
typedef int audio_output_t ;
struct TYPE_5__ {scalar_t__ action; int * vout; } ;


 struct media_params DEFAULT_MEDIA_PARAMS (int ) ;
 int VLC_PLAYER_STATE_STOPPING ;
 scalar_t__ VLC_PLAYER_VOUT_STARTED ;
 int VLC_TICK_FROM_MS (int) ;
 int aout_Release (int *) ;
 int assert (int) ;
 int free (int **) ;
 int player_set_current_mock_media (struct ctx*,char*,struct media_params*,int) ;
 int player_start (struct ctx*) ;
 int test_end (struct ctx*) ;
 int test_log (char*) ;
 int * vlc_player_aout_Hold (int *) ;
 int * vlc_player_vout_Hold (int *) ;
 int ** vlc_player_vout_HoldAll (int *,size_t*) ;
 int vout_Release (int *) ;
 int wait_state (struct ctx*,int ) ;

__attribute__((used)) static void
test_outputs(struct ctx *ctx)
{
    test_log("test_outputs\n");
    vlc_player_t *player = ctx->player;



    audio_output_t *aout = vlc_player_aout_Hold(player);
    assert(aout);

    vout_thread_t *vout = vlc_player_vout_Hold(player);
    assert(vout);

    size_t vout_count;
    vout_thread_t **vout_list = vlc_player_vout_HoldAll(player, &vout_count);
    assert(vout_count == 1 && vout_list[0] == vout);
    vout_Release(vout_list[0]);
    free(vout_list);
    vout_Release(vout);


    struct media_params params = DEFAULT_MEDIA_PARAMS(VLC_TICK_FROM_MS(10));

    player_set_current_mock_media(ctx, "media1", &params, 0);
    player_start(ctx);

    wait_state(ctx, VLC_PLAYER_STATE_STOPPING);

    {
        vec_on_vout_changed *vec = &ctx->report.on_vout_changed;
        assert(vec->size >= 1);
        assert(vec->data[0].action == VLC_PLAYER_VOUT_STARTED);

        vout_thread_t *same_vout = vlc_player_vout_Hold(player);
        assert(vec->data[0].vout == same_vout);
        vout_Release(same_vout);
    }

    audio_output_t *same_aout = vlc_player_aout_Hold(player);
    assert(same_aout == aout);
    aout_Release(same_aout);

    aout_Release(aout);
    test_end(ctx);
}

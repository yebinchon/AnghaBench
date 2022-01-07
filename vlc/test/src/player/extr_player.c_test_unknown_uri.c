
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_player_t ;
struct TYPE_6__ {int size; scalar_t__* data; } ;
typedef TYPE_3__ vec_on_error_changed ;
struct TYPE_5__ {TYPE_3__ on_error_changed; } ;
struct TYPE_4__ {int error; } ;
struct ctx {TYPE_2__ report; int played_medias; TYPE_1__ params; int * player; } ;
typedef int input_item_t ;


 scalar_t__ VLC_PLAYER_ERROR_NONE ;
 int VLC_PLAYER_STATE_STARTED ;
 int VLC_PLAYER_STATE_STOPPED ;
 int VLC_SUCCESS ;
 int assert (int) ;
 int * input_item_New (char*,char*) ;
 int player_start (struct ctx*) ;
 int test_end (struct ctx*) ;
 int test_log (char*) ;
 int vlc_player_SetCurrentMedia (int *,int *) ;
 int vlc_vector_push (int *,int *) ;
 int wait_state (struct ctx*,int ) ;

__attribute__((used)) static void
test_unknown_uri(struct ctx *ctx)
{
    test_log("unknown_uri");
    vlc_player_t *player = ctx->player;

    input_item_t *media = input_item_New("unknownuri://foo", "fail");
    assert(media);
    int ret = vlc_player_SetCurrentMedia(player, media);
    assert(ret == VLC_SUCCESS);

    ctx->params.error = 1;
    bool success = vlc_vector_push(&ctx->played_medias, media);
    assert(success);

    player_start(ctx);

    wait_state(ctx, VLC_PLAYER_STATE_STARTED);
    wait_state(ctx, VLC_PLAYER_STATE_STOPPED);
    {
        vec_on_error_changed *vec = &ctx->report.on_error_changed;
        assert(vec->size == 1);
        assert(vec->data[0] != VLC_PLAYER_ERROR_NONE);
    }

    test_end(ctx);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_player_t ;
struct TYPE_7__ {size_t size; scalar_t__* data; } ;
typedef TYPE_3__ vec_on_current_media_changed ;
struct TYPE_6__ {size_t const size; scalar_t__* data; } ;
struct TYPE_5__ {TYPE_3__ on_current_media_changed; } ;
struct ctx {TYPE_2__ played_medias; int wait; TYPE_1__ report; int * player; } ;


 int * VEC_LAST (TYPE_3__*) ;
 int assert (int) ;
 int player_set_current_mock_media (struct ctx*,int *,int *,int) ;
 int vlc_player_CondWait (int *,int *) ;
 int * vlc_player_GetCurrentMedia (int *) ;

__attribute__((used)) static void
test_end_poststop_medias(struct ctx *ctx)
{
    vlc_player_t *player = ctx->player;
    vec_on_current_media_changed *vec = &ctx->report.on_current_media_changed;

    assert(vec->size > 0);
    assert(vlc_player_GetCurrentMedia(player) != ((void*)0));
    assert(VEC_LAST(vec) == vlc_player_GetCurrentMedia(player));
    const size_t oldsize = vec->size;

    player_set_current_mock_media(ctx, ((void*)0), ((void*)0), 0);

    while (vec->size == oldsize)
        vlc_player_CondWait(player, &ctx->wait);

    assert(vec->size == ctx->played_medias.size);
    for (size_t i = 0; i < vec->size; ++i)
        assert(vec->data[i] == ctx->played_medias.data[i]);

    assert(VEC_LAST(vec) == ((void*)0));
    assert(vlc_player_GetCurrentMedia(player) == ((void*)0));
}

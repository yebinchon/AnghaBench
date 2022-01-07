
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct media_params {int dummy; } ;
struct TYPE_2__ {scalar_t__ size; } ;
struct ctx {int next_medias; TYPE_1__ played_medias; int player; } ;
typedef int input_item_t ;


 int assert (int) ;
 int * create_mock_media (char const*,struct media_params const*) ;
 int player_set_current_mock_media (struct ctx*,char const*,struct media_params const*,int) ;
 int * vlc_player_GetCurrentMedia (int ) ;
 int vlc_vector_push (int *,int *) ;

__attribute__((used)) static void
player_set_next_mock_media(struct ctx *ctx, const char *name,
                           const struct media_params *params)
{
    if (vlc_player_GetCurrentMedia(ctx->player) == ((void*)0))
    {
        assert(ctx->played_medias.size == 0);
        player_set_current_mock_media(ctx, name, params, 0);
    }
    else
    {
        input_item_t *media = create_mock_media(name, params);
        assert(media);

        assert(ctx->played_medias.size > 0);
        bool success = vlc_vector_push(&ctx->next_medias, media);
        assert(success);
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_player_t ;
struct TYPE_2__ {scalar_t__ size; int ** data; } ;
struct ctx {int played_medias; TYPE_1__ next_medias; } ;
typedef int input_item_t ;


 int assert (int) ;
 struct ctx* get_ctx (int *,void*) ;
 int input_item_Hold (int *) ;
 int vlc_vector_push (int *,int *) ;
 int vlc_vector_remove (TYPE_1__*,int ) ;

__attribute__((used)) static input_item_t *
player_get_next(vlc_player_t *player, void *data)
{
    struct ctx *ctx = get_ctx(player, data);
    input_item_t *next_media;
    if (ctx->next_medias.size > 0)
    {
        next_media = ctx->next_medias.data[0];
        vlc_vector_remove(&ctx->next_medias, 0);

        input_item_Hold(next_media);
        bool success = vlc_vector_push(&ctx->played_medias, next_media);
        assert(success);
    }
    else
        next_media = ((void*)0);
    return next_media;
}

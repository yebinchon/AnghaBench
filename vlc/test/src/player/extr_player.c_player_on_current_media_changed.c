
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
struct ctx {int dummy; } ;
typedef int input_item_t ;


 int VEC_PUSH (int ,int *) ;
 struct ctx* get_ctx (int *,void*) ;
 int input_item_Hold (int *) ;
 int on_current_media_changed ;

__attribute__((used)) static void
player_on_current_media_changed(vlc_player_t *player,
                                input_item_t *new_media, void *data)
{
    struct ctx *ctx = get_ctx(player, data);
    if (new_media)
        input_item_Hold(new_media);
    VEC_PUSH(on_current_media_changed, new_media);
}

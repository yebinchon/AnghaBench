
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
struct vlc_player_title {int dummy; } ;
struct ctx {int dummy; } ;


 int VEC_PUSH (int ,size_t) ;
 struct ctx* get_ctx (int *,void*) ;
 int on_title_selection_changed ;

__attribute__((used)) static void
player_on_title_selection_changed(vlc_player_t *player,
                                  const struct vlc_player_title *new_title,
                                  size_t new_idx, void *data)
{
    struct ctx *ctx = get_ctx(player, data);
    VEC_PUSH(on_title_selection_changed, new_idx);
    (void) new_title;
}

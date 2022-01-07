
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_title_list ;
typedef int vlc_player_t ;
struct ctx {int dummy; } ;


 int VEC_PUSH (int ,int *) ;
 struct ctx* get_ctx (int *,void*) ;
 int on_titles_changed ;
 int vlc_player_title_list_Hold (int *) ;

__attribute__((used)) static void
player_on_titles_changed(vlc_player_t *player,
                         vlc_player_title_list *titles, void *data)
{
    struct ctx *ctx = get_ctx(player, data);
    if (titles)
        vlc_player_title_list_Hold(titles);
    VEC_PUSH(on_titles_changed, titles);
}

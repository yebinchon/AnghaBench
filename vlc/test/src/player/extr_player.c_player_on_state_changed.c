
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
struct ctx {int dummy; } ;
typedef enum vlc_player_state { ____Placeholder_vlc_player_state } vlc_player_state ;


 int VEC_PUSH (int ,int) ;
 struct ctx* get_ctx (int *,void*) ;
 int on_state_changed ;

__attribute__((used)) static void
player_on_state_changed(vlc_player_t *player, enum vlc_player_state state,
                        void *data)
{
    struct ctx *ctx = get_ctx(player, data);
    VEC_PUSH(on_state_changed, state);
}

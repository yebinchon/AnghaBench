
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
struct ctx {int dummy; } ;


 int VEC_PUSH (int ,float) ;
 struct ctx* get_ctx (int *,void*) ;
 int on_rate_changed ;

__attribute__((used)) static void
player_on_rate_changed(vlc_player_t *player, float new_rate, void *data)
{
    struct ctx *ctx = get_ctx(player, data);
    VEC_PUSH(on_rate_changed, new_rate);
}

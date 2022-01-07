
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
typedef int vlc_player_t ;
struct report_position {float pos; int time; } ;
struct ctx {int dummy; } ;


 int VEC_PUSH (int ,struct report_position) ;
 struct ctx* get_ctx (int *,void*) ;
 int on_position_changed ;

__attribute__((used)) static void
player_on_position_changed(vlc_player_t *player, vlc_tick_t time,
                           float pos, void *data)
{
    struct ctx *ctx = get_ctx(player, data);
    struct report_position report = {
        .time = time,
        .pos = pos,
    };
    VEC_PUSH(on_position_changed, report);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
struct report_signal {float quality; float strength; } ;
struct ctx {int dummy; } ;


 int VEC_PUSH (int ,struct report_signal) ;
 struct ctx* get_ctx (int *,void*) ;
 int on_signal_changed ;

__attribute__((used)) static void
player_on_signal_changed(vlc_player_t *player,
                         float quality, float strength, void *data)
{
    struct ctx *ctx = get_ctx(player, data);
    struct report_signal report = {
        .quality = quality,
        .strength = strength,
    };
    VEC_PUSH(on_signal_changed, report);
}

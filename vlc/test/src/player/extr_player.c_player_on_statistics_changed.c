
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
struct input_stats_t {int dummy; } ;
struct ctx {int dummy; } ;


 int VEC_PUSH (int ,struct input_stats_t) ;
 struct ctx* get_ctx (int *,void*) ;
 int on_statistics_changed ;

__attribute__((used)) static void
player_on_statistics_changed(vlc_player_t *player,
                        const struct input_stats_t *stats, void *data)
{
    struct ctx *ctx = get_ctx(player, data);
    struct input_stats_t dup = *stats;
    VEC_PUSH(on_statistics_changed, dup);
}

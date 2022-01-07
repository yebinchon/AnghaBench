
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
struct vlc_player_track {int dummy; } ;
struct report_track_list {int action; int track; } ;
struct ctx {int dummy; } ;
typedef enum vlc_player_list_action { ____Placeholder_vlc_player_list_action } vlc_player_list_action ;


 int VEC_PUSH (int ,struct report_track_list) ;
 int assert (int ) ;
 struct ctx* get_ctx (int *,void*) ;
 int on_track_list_changed ;
 int vlc_player_track_Dup (struct vlc_player_track const*) ;

__attribute__((used)) static void
player_on_track_list_changed(vlc_player_t *player,
                             enum vlc_player_list_action action,
                             const struct vlc_player_track *track,
                             void *data)
{
    struct ctx *ctx = get_ctx(player, data);
    struct report_track_list report = {
        .action = action,
        .track = vlc_player_track_Dup(track),
    };
    assert(report.track);
    VEC_PUSH(on_track_list_changed, report);
}

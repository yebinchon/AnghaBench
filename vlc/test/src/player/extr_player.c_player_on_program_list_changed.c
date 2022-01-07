
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
struct vlc_player_program {int dummy; } ;
struct report_program_list {int action; int prgm; } ;
struct ctx {int dummy; } ;
typedef enum vlc_player_list_action { ____Placeholder_vlc_player_list_action } vlc_player_list_action ;


 int VEC_PUSH (int ,struct report_program_list) ;
 int assert (int ) ;
 struct ctx* get_ctx (int *,void*) ;
 int on_program_list_changed ;
 int vlc_player_program_Dup (struct vlc_player_program const*) ;

__attribute__((used)) static void
player_on_program_list_changed(vlc_player_t *player,
                               enum vlc_player_list_action action,
                               const struct vlc_player_program *prgm,
                               void *data)
{
    struct ctx *ctx = get_ctx(player, data);
    struct report_program_list report = {
        .action = action,
        .prgm = vlc_player_program_Dup(prgm)
    };
    assert(report.prgm);
    VEC_PUSH(on_program_list_changed, report);
}

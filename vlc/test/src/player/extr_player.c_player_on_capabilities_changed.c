
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
struct report_capabilities {int old_caps; int new_caps; } ;
struct ctx {int dummy; } ;


 int VEC_PUSH (int ,struct report_capabilities) ;
 struct ctx* get_ctx (int *,void*) ;
 int on_capabilities_changed ;

__attribute__((used)) static void
player_on_capabilities_changed(vlc_player_t *player, int old_caps, int new_caps,
                               void *data)
{
    struct ctx *ctx = get_ctx(player, data);
    struct report_capabilities report = {
        .old_caps = old_caps,
        .new_caps = new_caps,
    };
    VEC_PUSH(on_capabilities_changed, report);
}

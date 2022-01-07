
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_player_t ;
struct vlc_player_program {int scrambled; } ;
struct TYPE_8__ {int event_manager; } ;
typedef TYPE_3__ libvlc_media_player_t ;
struct TYPE_6__ {int new_scrambled; } ;
struct TYPE_7__ {TYPE_1__ media_player_scrambled_changed; } ;
struct TYPE_9__ {TYPE_2__ u; int type; } ;
typedef TYPE_4__ libvlc_event_t ;
typedef enum vlc_player_list_action { ____Placeholder_vlc_player_list_action } vlc_player_list_action ;


 int libvlc_MediaPlayerScrambledChanged ;
 int libvlc_event_send (int *,TYPE_4__*) ;
 struct vlc_player_program* vlc_player_GetSelectedProgram (int *) ;

__attribute__((used)) static void
on_program_list_changed(vlc_player_t *player,
                        enum vlc_player_list_action action,
                        const struct vlc_player_program *prgm, void* data)
{
    (void) action;
    (void) prgm;

    libvlc_media_player_t *mp = data;

    const struct vlc_player_program *selected =
        vlc_player_GetSelectedProgram(player);
    if (!selected)
        return;

    libvlc_event_t event;
    event.type = libvlc_MediaPlayerScrambledChanged;
    event.u.media_player_scrambled_changed.new_scrambled = selected->scrambled;

    libvlc_event_send(&mp->event_manager, &event);
}

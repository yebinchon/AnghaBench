
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_playlist_t ;
typedef int vlc_player_t ;
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ intf_thread_t ;
struct TYPE_8__ {int plidx_follow; char* open_chain; int * playlist; } ;
typedef TYPE_2__ intf_sys_t ;


 int AUDIO_ES ;
 int BOX_BROWSE ;
 int BOX_HELP ;
 int BOX_INFO ;
 int BOX_LOG ;
 int BOX_META ;
 int BOX_OPEN ;
 int BOX_PLAYLIST ;
 int BOX_SEARCH ;
 int BOX_STATS ;
 int BoxSwitch (TYPE_2__*,int ) ;
 int ChangePosition (int *,double) ;
 int ERR ;
 int Eject (TYPE_1__*,int *) ;




 int SPU_ES ;
 int VIDEO_ES ;
 int clear () ;
 int getch () ;
 int libvlc_Quit (int ) ;
 int vlc_object_instance (TYPE_1__*) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_SelectNextChapter (int *) ;
 int vlc_player_SelectNextTitle (int *) ;
 int vlc_player_SelectNextTrack (int *,int ) ;
 int vlc_player_SelectPrevChapter (int *) ;
 int vlc_player_SelectPrevTitle (int *) ;
 int vlc_player_Stop (int *) ;
 int vlc_player_TogglePause (int *) ;
 int vlc_player_Unlock (int *) ;
 int vlc_player_aout_DecrementVolume (int *,int,int *) ;
 int vlc_player_aout_IncrementVolume (int *,int,int *) ;
 int vlc_player_aout_ToggleMute (int *) ;
 int vlc_player_vout_ToggleFullscreen (int *) ;
 int vlc_playlist_Lock (int *) ;
 int vlc_playlist_Next (int *) ;
 int vlc_playlist_Prev (int *) ;
 int vlc_playlist_Unlock (int *) ;

__attribute__((used)) static void HandleCommonKey(intf_thread_t *intf, vlc_player_t *player, int key)
{
    intf_sys_t *sys = intf->p_sys;
    vlc_playlist_t *playlist = sys->playlist;

    switch(key)
    {
    case 0x1b:

        if (getch() != ERR)
            return;


    case 'q':
    case 'Q':
    case 130:
        libvlc_Quit(vlc_object_instance(intf));
        return;

    case 'h':
    case 'H': BoxSwitch(sys, BOX_HELP); return;
    case 'i': BoxSwitch(sys, BOX_INFO); return;
    case 'M': BoxSwitch(sys, BOX_META); return;
    case 'L': BoxSwitch(sys, BOX_LOG); return;
    case 'P': BoxSwitch(sys, BOX_PLAYLIST); return;
    case 'B': BoxSwitch(sys, BOX_BROWSE); return;
    case 'S': BoxSwitch(sys, BOX_STATS); return;

    case '/':
        sys->plidx_follow = 0;
        BoxSwitch(sys, BOX_SEARCH);
        return;

    case 'A':
        sys->open_chain[0] = '\0';
        BoxSwitch(sys, BOX_OPEN);
        return;


    case 128: ChangePosition(player, +0.01); return;
    case 129: ChangePosition(player, -0.01); return;


    case 'f':
        vlc_player_vout_ToggleFullscreen(player);
        return;

    case ' ':
        vlc_player_Lock(player);
        vlc_player_TogglePause(player);
        vlc_player_Unlock(player);
        return;
    case 's':
        vlc_player_Lock(player);
        vlc_player_Stop(player);
        vlc_player_Unlock(player);
        return;

    case 'e': Eject(intf, player); return;

    case '[':
        vlc_player_Lock(player);
        vlc_player_SelectPrevTitle(player);
        vlc_player_Unlock(player);
        return;
    case ']':
        vlc_player_Lock(player);
        vlc_player_SelectNextTitle(player);
        vlc_player_Unlock(player);
        return;
    case '<':
        vlc_player_Lock(player);
        vlc_player_SelectPrevChapter(player);
        vlc_player_Unlock(player);
        return;
    case '>':
        vlc_player_Lock(player);
        vlc_player_SelectNextChapter(player);
        vlc_player_Unlock(player);
        return;

    case 'p':
        vlc_playlist_Lock(playlist);
        vlc_playlist_Prev(playlist);
        vlc_playlist_Unlock(playlist);
        break;
    case 'n':
        vlc_playlist_Lock(playlist);
        vlc_playlist_Next(playlist);
        vlc_playlist_Unlock(playlist);
        break;

    case 'a':
        vlc_player_Lock(player);
        vlc_player_aout_IncrementVolume(player, 1, ((void*)0));
        vlc_player_Unlock(player);
        break;
    case 'z':
        vlc_player_Lock(player);
        vlc_player_aout_DecrementVolume(player, 1, ((void*)0));
        vlc_player_Unlock(player);
        break;
    case 'm':
        vlc_player_Lock(player);
        vlc_player_aout_ToggleMute(player);
        vlc_player_Unlock(player);
        break;

    case 'c':
        vlc_player_Lock(player);
        vlc_player_SelectNextTrack(player, AUDIO_ES);
        vlc_player_Unlock(player);
        break;
    case 'v':
        vlc_player_Lock(player);
        vlc_player_SelectNextTrack(player, SPU_ES);
        vlc_player_Unlock(player);
        break;
    case 'b':
        vlc_player_Lock(player);
        vlc_player_SelectNextTrack(player, VIDEO_ES);
        vlc_player_Unlock(player);
        break;

    case 0x0c:
    case 131:
        break;

    default:
        return;
    }

    clear();
    return;
}

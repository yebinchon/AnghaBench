
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_player_t ;
typedef int intf_thread_t ;
struct TYPE_3__ {char* psz_name; } ;
typedef TYPE_1__ input_item_t ;


 char* GetDiscDevice (char*) ;
 int free (char*) ;
 int intf_Eject (int *,char*) ;
 TYPE_1__* vlc_player_GetCurrentMedia (int *) ;
 int vlc_player_IsStarted (int *) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_Unlock (int *) ;

__attribute__((used)) static void Eject(intf_thread_t *intf, vlc_player_t *player)
{
    char *device, *name;


    vlc_player_Lock(player);
    bool started = vlc_player_IsStarted(player);
    vlc_player_Unlock(player);
    if (started)
        return;

    vlc_player_Lock(player);
    input_item_t *current = vlc_player_GetCurrentMedia(player);
    vlc_player_Unlock(player);
    if (!current)
        return;
    name = current->psz_name;
    device = name ? GetDiscDevice(name) : ((void*)0);

    if (device) {
        intf_Eject(intf, device);
        free(device);
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_playlist_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ intf_thread_t ;
struct TYPE_5__ {int * playlist; } ;
typedef TYPE_2__ intf_sys_t ;
typedef int input_item_t ;


 int free (char*) ;
 int * input_item_New (char*,int *) ;
 int input_item_Release (int *) ;
 scalar_t__ unlikely (int ) ;
 char* vlc_path2uri (char const*,int *) ;
 int vlc_playlist_AppendOne (int *,int *) ;
 int vlc_playlist_Lock (int *) ;
 int vlc_playlist_Unlock (int *) ;

__attribute__((used)) static void AddItem(intf_thread_t *intf, const char *path)
{
    char *uri = vlc_path2uri(path, ((void*)0));
    if (uri == ((void*)0))
        return;

    input_item_t *item = input_item_New(uri, ((void*)0));
    free(uri);
    if (unlikely(item == ((void*)0)))
        return;

    intf_sys_t *sys = intf->p_sys;
    vlc_playlist_t *playlist = sys->playlist;
    vlc_playlist_Lock(playlist);
    vlc_playlist_AppendOne(playlist, item);
    vlc_playlist_Unlock(playlist);

    input_item_Release(item);
}

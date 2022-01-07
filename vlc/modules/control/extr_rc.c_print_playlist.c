
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
typedef int vlc_playlist_t ;
typedef int vlc_playlist_item_t ;
typedef int intf_thread_t ;
struct TYPE_3__ {scalar_t__ i_duration; int psz_name; } ;
typedef TYPE_1__ input_item_t ;


 scalar_t__ INPUT_DURATION_INDEFINITE ;
 int MSTRTIME_MAX_SIZE ;
 int SEC_FROM_VLC_TICK (scalar_t__) ;
 scalar_t__ VLC_TICK_INVALID ;
 int msg_rc (char*,int ,...) ;
 int secstotimestr (char*,int ) ;
 size_t vlc_playlist_Count (int *) ;
 int * vlc_playlist_Get (int *,size_t) ;
 TYPE_1__* vlc_playlist_item_GetMedia (int *) ;

__attribute__((used)) static void print_playlist(intf_thread_t *p_intf, vlc_playlist_t *playlist)
{
    size_t count = vlc_playlist_Count(playlist);
    for (size_t i = 0; i < count; ++i)
    {
        vlc_playlist_item_t *plitem = vlc_playlist_Get(playlist, i);
        input_item_t *item = vlc_playlist_item_GetMedia(plitem);
        vlc_tick_t len = item->i_duration;
        if (len != INPUT_DURATION_INDEFINITE && len != VLC_TICK_INVALID)
        {
            char buf[MSTRTIME_MAX_SIZE];
            secstotimestr(buf, SEC_FROM_VLC_TICK(len));
            msg_rc("|-- %s (%s)", item->psz_name, buf);
        }
        else
            msg_rc("|-- %s", item->psz_name);
    }
}

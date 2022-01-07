
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ intf_thread_t ;
struct TYPE_4__ {int playlist; } ;
typedef TYPE_2__ intf_sys_t ;
typedef scalar_t__ gpointer ;
typedef int gchar ;
typedef int NotifyNotification ;


 int VLC_UNUSED (int *) ;
 int notify_notification_close (int *,int *) ;
 int vlc_playlist_Lock (int ) ;
 int vlc_playlist_Next (int ) ;
 int vlc_playlist_Unlock (int ) ;

__attribute__((used)) static void Next( NotifyNotification *notification, gchar *psz, gpointer p )
{
    intf_thread_t *p_intf = (intf_thread_t *)p;
    intf_sys_t *p_sys = p_intf->p_sys;

    VLC_UNUSED(psz);
    notify_notification_close( notification, ((void*)0) );
    vlc_playlist_Lock( p_sys->playlist );
    vlc_playlist_Next( p_sys->playlist );
    vlc_playlist_Unlock( p_sys->playlist );
}

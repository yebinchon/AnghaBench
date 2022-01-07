
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parsed_lock; int parsed_status; } ;
typedef TYPE_1__ libvlc_media_t ;
typedef int libvlc_media_parsed_status_t ;


 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

libvlc_media_parsed_status_t
libvlc_media_get_parsed_status(libvlc_media_t *media)
{
    libvlc_media_parsed_status_t status;

    vlc_mutex_lock(&media->parsed_lock);
    status = media->parsed_status;
    vlc_mutex_unlock(&media->parsed_lock);
    return status;
}

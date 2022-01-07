
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_decoder_device ;
typedef int filter_t ;
struct TYPE_2__ {int lock; int * owner; int * dec_device; } ;


 TYPE_1__ holder ;
 int vlc_decoder_device_Release (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void
vlc_vaapi_FilterReleaseInstance(filter_t *filter,
                                vlc_decoder_device *dec_device)
{
    vlc_decoder_device_Release(dec_device);
    vlc_mutex_lock(&holder.lock);
    if (filter == holder.owner)
    {
        holder.dec_device = ((void*)0);
        holder.owner = ((void*)0);
    }
    vlc_mutex_unlock(&holder.lock);
}

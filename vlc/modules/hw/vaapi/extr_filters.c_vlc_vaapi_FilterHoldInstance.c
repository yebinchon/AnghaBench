
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ type; int opaque; } ;
typedef TYPE_2__ vlc_decoder_device ;
struct TYPE_11__ {int i_chroma; } ;
struct TYPE_13__ {scalar_t__ p_sys; TYPE_1__ format; } ;
typedef TYPE_3__ picture_t ;
typedef int filter_t ;
typedef int VADisplay ;
struct TYPE_14__ {int lock; TYPE_2__* dec_device; int * owner; } ;


 scalar_t__ VLC_DECODER_DEVICE_VAAPI ;
 int assert (int) ;
 TYPE_3__* filter_NewPicture (int *) ;
 TYPE_9__ holder ;
 int picture_Release (TYPE_3__*) ;
 TYPE_2__* vlc_decoder_device_Hold (TYPE_2__*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_vaapi_IsChromaOpaque (int ) ;
 TYPE_2__* vlc_vaapi_PicSysHoldInstance (scalar_t__,int *) ;

vlc_decoder_device *
vlc_vaapi_FilterHoldInstance(filter_t *filter, VADisplay *dpy)
{

    picture_t *pic = filter_NewPicture(filter);
    if (!pic)
        return ((void*)0);

    if (!vlc_vaapi_IsChromaOpaque(pic->format.i_chroma))
    {
        picture_Release(pic);
        return ((void*)0);
    }

    vlc_decoder_device *dec_device = ((void*)0);

    vlc_mutex_lock(&holder.lock);
    if (holder.dec_device != ((void*)0))
    {
        dec_device = vlc_decoder_device_Hold(holder.dec_device);
        *dpy = dec_device->opaque;
    }
    else
    {
        holder.owner = filter;
        holder.dec_device = dec_device = pic->p_sys ?
            vlc_vaapi_PicSysHoldInstance(pic->p_sys, dpy) : ((void*)0);
        assert(dec_device == ((void*)0) || dec_device->type == VLC_DECODER_DEVICE_VAAPI);
    }
    vlc_mutex_unlock(&holder.lock);
    picture_Release(pic);

    return dec_device;
}

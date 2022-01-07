
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vlc_decoder_device ;
struct TYPE_14__ {scalar_t__ MaxCLL; scalar_t__ MaxFALL; } ;
struct TYPE_15__ {TYPE_4__ lighting; int mastering; } ;
struct TYPE_16__ {TYPE_5__ video; } ;
struct decoder_owner {int lock; TYPE_6__ fmt; } ;
typedef enum vlc_vout_order { ____Placeholder_vlc_vout_order } vlc_vout_order ;
struct TYPE_11__ {scalar_t__ MaxCLL; scalar_t__ MaxFALL; } ;
struct TYPE_12__ {TYPE_1__ lighting; int mastering; } ;
struct TYPE_13__ {TYPE_2__ video; } ;
struct TYPE_17__ {TYPE_3__ fmt_out; } ;
typedef TYPE_7__ decoder_t ;


 int CreateVoutIfNeeded (struct decoder_owner*,int *,int*,int **) ;
 int DecoderUpdateFormatLocked (struct decoder_owner*) ;
 struct decoder_owner* dec_get_owner (TYPE_7__*) ;
 scalar_t__ memcmp (int *,int *,int) ;
 int msg_Dbg (TYPE_7__*,char*) ;
 int vlc_decoder_device_Release (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static vlc_decoder_device * ModuleThread_GetDecoderDevice( decoder_t *p_dec )
{
    struct decoder_owner *p_owner = dec_get_owner( p_dec );

    enum vlc_vout_order vout_order;
    vlc_decoder_device *dec_device = ((void*)0);
    int created_vout = CreateVoutIfNeeded(p_owner, ((void*)0), &vout_order, &dec_device);
    if (created_vout == -1)
    {
        if ( dec_device )
            vlc_decoder_device_Release( dec_device );
        return ((void*)0);
    }
    if (created_vout == 1)
    {
        return dec_device;
    }

    bool need_format_update = 0;
    if ( memcmp( &p_dec->fmt_out.video.mastering,
                 &p_owner->fmt.video.mastering,
                 sizeof(p_owner->fmt.video.mastering)) )
    {
        msg_Dbg(p_dec, "vout update: mastering data");
        need_format_update = 1;
    }
    if ( p_dec->fmt_out.video.lighting.MaxCLL !=
         p_owner->fmt.video.lighting.MaxCLL ||
         p_dec->fmt_out.video.lighting.MaxFALL !=
         p_owner->fmt.video.lighting.MaxFALL )
    {
        msg_Dbg(p_dec, "vout update: lighting data");
        need_format_update = 1;
    }

    if ( need_format_update )
    {

        vlc_mutex_lock( &p_owner->lock );
        DecoderUpdateFormatLocked( p_owner );
        vlc_mutex_unlock( &p_owner->lock );
    }
    return dec_device;
}

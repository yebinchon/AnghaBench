
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vout; int * fmt; } ;
typedef TYPE_1__ vout_device_configuration_t ;
typedef int vlc_decoder_device ;
typedef int video_format_t ;


 int VoutCheckFormat (int *) ;
 int VoutFixFormat (int *,int *) ;
 int assert (int ) ;
 int video_format_Clean (int *) ;
 int vout_EnableWindow (int ,int *,int **) ;

vlc_decoder_device *vout_GetDevice(const vout_device_configuration_t *cfg)
{
    vlc_decoder_device *dec_device = ((void*)0);

    assert(cfg->fmt != ((void*)0));

    if (!VoutCheckFormat(cfg->fmt))
        return ((void*)0);

    video_format_t original;
    VoutFixFormat(&original, cfg->fmt);

    int res = vout_EnableWindow(cfg->vout, &original, &dec_device);
    video_format_Clean(&original);
    if (res != 0)
        return ((void*)0);
    return dec_device;
}

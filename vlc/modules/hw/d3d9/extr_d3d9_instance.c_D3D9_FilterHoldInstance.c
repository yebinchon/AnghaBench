
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int picture_t ;
struct TYPE_22__ {int surface; } ;
typedef TYPE_5__ picture_sys_d3d9_t ;
struct TYPE_20__ {int i_height; int i_width; } ;
struct TYPE_21__ {TYPE_3__ video; } ;
struct TYPE_18__ {scalar_t__ i_chroma; } ;
struct TYPE_19__ {TYPE_1__ video; } ;
struct TYPE_23__ {TYPE_4__ fmt_out; TYPE_2__ fmt_in; } ;
typedef TYPE_6__ filter_t ;
struct TYPE_24__ {int owner; int * dev; } ;
typedef TYPE_7__ d3d9_device_t ;
struct TYPE_25__ {int Height; int Width; void* Format; } ;
typedef TYPE_8__ D3DSURFACE_DESC ;


 TYPE_5__* ActiveD3D9PictureSys (int *) ;
 scalar_t__ FAILED (int ) ;
 int IDirect3DDevice9_AddRef (int *) ;
 int IDirect3DDevice9_Release (int *) ;
 int IDirect3DSurface9_GetDesc (int ,TYPE_8__*) ;
 int IDirect3DSurface9_GetDevice (int ,int **) ;
 void* MAKEFOURCC (char,char,char,char) ;
 scalar_t__ VLC_CODEC_D3D9_OPAQUE_10B ;
 TYPE_7__ device ;
 int * filter_NewPicture (TYPE_6__*) ;
 int inst_lock ;
 int instances ;
 int memset (TYPE_8__*,int ,int) ;
 int msg_Warn (TYPE_6__*,char*) ;
 int picture_Release (int *) ;
 scalar_t__ unlikely (int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void D3D9_FilterHoldInstance(filter_t *filter, d3d9_device_t *out, D3DSURFACE_DESC *dstDesc)
{
    out->dev = ((void*)0);

    picture_t *pic = filter_NewPicture(filter);
    if (!pic)
        return;

    picture_sys_d3d9_t *p_sys = ActiveD3D9PictureSys(pic);

    vlc_mutex_lock(&inst_lock);
    if (p_sys)
    {
        if (FAILED(IDirect3DSurface9_GetDevice( p_sys->surface, &out->dev )))
            goto done;
        IDirect3DDevice9_Release(out->dev);
        if (FAILED(IDirect3DSurface9_GetDesc( p_sys->surface, dstDesc )))
        {
            out->dev = ((void*)0);
            goto done;
        }

        if (device.dev == ((void*)0))
        {
            device.dev = out->dev;
            instances++;
        }
    }
    else
    {
        *out = device;
        if (device.dev != ((void*)0))
            instances++;

        memset(dstDesc, 0, sizeof(*dstDesc));
        if (filter->fmt_in.video.i_chroma == VLC_CODEC_D3D9_OPAQUE_10B)
            dstDesc->Format = MAKEFOURCC('P','0','1','0');
        else
            dstDesc->Format = MAKEFOURCC('N','V','1','2');
        dstDesc->Width = filter->fmt_out.video.i_width;
        dstDesc->Height = filter->fmt_out.video.i_height;
    }

    out->owner = 0;
    if (unlikely(out->dev == ((void*)0)))
        msg_Warn(filter, "no context available");
    else
        IDirect3DDevice9_AddRef(out->dev);

done:
    vlc_mutex_unlock(&inst_lock);

    picture_Release(pic);
}

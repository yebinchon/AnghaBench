
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int picture_t ;
struct TYPE_9__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_10__ {int cache; int dest_pics; int dpy; } ;
typedef TYPE_2__ filter_sys_t ;
struct TYPE_11__ {int image_id; int buf; } ;
typedef TYPE_3__ VAImage ;
typedef int VADisplay ;


 int FillVAImageFromPicture (TYPE_3__*,void*,int *,int *,int *) ;
 int VLC_OBJECT (TYPE_1__*) ;
 int msg_Err (TYPE_1__*,char*) ;
 int picture_CopyProperties (int *,int *) ;
 int picture_Release (int *) ;
 int * picture_pool_Wait (int ) ;
 scalar_t__ vlc_vaapi_DeriveImage (int ,int const,int ,TYPE_3__*) ;
 scalar_t__ vlc_vaapi_DestroyImage (int ,int const,int ) ;
 scalar_t__ vlc_vaapi_MapBuffer (int ,int const,int ,void**) ;
 int vlc_vaapi_PicAttachContext (int *) ;
 int vlc_vaapi_PicGetSurface (int *) ;
 scalar_t__ vlc_vaapi_UnmapBuffer (int ,int const,int ) ;

__attribute__((used)) static picture_t *
UploadSurface(filter_t *filter, picture_t *src)
{
    filter_sys_t *p_sys = filter->p_sys;
    VADisplay const va_dpy = p_sys->dpy;
    VAImage dest_img;
    void * dest_buf;
    picture_t * dest_pic = picture_pool_Wait(p_sys->dest_pics);

    if (!dest_pic)
    {
        msg_Err(filter, "cannot retrieve picture from the dest pics pool");
        goto ret;
    }
    vlc_vaapi_PicAttachContext(dest_pic);
    picture_CopyProperties(dest_pic, src);

    if (vlc_vaapi_DeriveImage(VLC_OBJECT(filter), va_dpy,
                              vlc_vaapi_PicGetSurface(dest_pic), &dest_img)
        || vlc_vaapi_MapBuffer(VLC_OBJECT(filter), va_dpy,
                               dest_img.buf, &dest_buf))
        goto error;

    FillVAImageFromPicture(&dest_img, dest_buf, dest_pic,
                           src, &p_sys->cache);

    if (vlc_vaapi_UnmapBuffer(VLC_OBJECT(filter), va_dpy, dest_img.buf)
        || vlc_vaapi_DestroyImage(VLC_OBJECT(filter),
                                  va_dpy, dest_img.image_id))
        goto error;

ret:
    picture_Release(src);
    return dest_pic;

error:
    picture_Release(dest_pic);
    dest_pic = ((void*)0);
    goto ret;
}

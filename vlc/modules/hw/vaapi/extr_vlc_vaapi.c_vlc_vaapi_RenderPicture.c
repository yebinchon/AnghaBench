
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int VADisplay ;
typedef int VAContextID ;
typedef int VABufferID ;


 int VA_CALL (int *,int ,int ,int ,int *,int) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int vaRenderPicture ;

int
vlc_vaapi_RenderPicture(vlc_object_t *o, VADisplay dpy, VAContextID ctx,
                        VABufferID *buffers, int num_buffers)
{
    VA_CALL(o, vaRenderPicture, dpy, ctx, buffers, num_buffers);
    return VLC_SUCCESS;
error: return VLC_EGENERIC;
}

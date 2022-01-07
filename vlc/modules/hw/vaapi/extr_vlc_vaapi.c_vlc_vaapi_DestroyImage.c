
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int VAImageID ;
typedef int VADisplay ;


 int VA_CALL (int *,int ,int ,int ) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int vaDestroyImage ;

int
vlc_vaapi_DestroyImage(vlc_object_t *o, VADisplay dpy, VAImageID image)
{
    VA_CALL(o, vaDestroyImage, dpy, image);
    return VLC_SUCCESS;
error: return VLC_EGENERIC;
}

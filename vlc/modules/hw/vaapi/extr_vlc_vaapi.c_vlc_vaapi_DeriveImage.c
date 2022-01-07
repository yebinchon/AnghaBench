
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int VASurfaceID ;
typedef int VAImage ;
typedef int VADisplay ;


 int VA_CALL (int *,int ,int ,int ,int *) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int vaDeriveImage ;

int
vlc_vaapi_DeriveImage(vlc_object_t *o,
                      VADisplay dpy, VASurfaceID surface, VAImage *image)
{
    VA_CALL(o, vaDeriveImage, dpy, surface, image);
    return VLC_SUCCESS;
error: return VLC_EGENERIC;
}

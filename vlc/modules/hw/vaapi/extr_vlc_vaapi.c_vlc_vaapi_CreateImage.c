
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int VAImageFormat ;
typedef int VAImage ;
typedef int VADisplay ;


 int VA_CALL (int *,int ,int ,int *,int,int,int *) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int vaCreateImage ;

int
vlc_vaapi_CreateImage(vlc_object_t *o, VADisplay dpy, VAImageFormat *format,
                      int width, int height, VAImage *image)
{
    VA_CALL(o, vaCreateImage, dpy, format, width, height, image);
    return VLC_SUCCESS;
error: return VLC_EGENERIC;
}

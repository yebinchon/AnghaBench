
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int VADisplay ;
typedef int VAConfigID ;


 int VA_CALL (int *,int ,int ,int ) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int vaDestroyConfig ;

int
vlc_vaapi_DestroyConfig(vlc_object_t *o, VADisplay dpy, VAConfigID conf)
{
    VA_CALL(o, vaDestroyConfig, dpy, conf);
    return VLC_SUCCESS;
error: return VLC_EGENERIC;
}

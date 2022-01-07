
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int VAProcFilterType ;
typedef int VADisplay ;
typedef int VAContextID ;


 int VA_CALL (int *,int ,int ,int ,int ,void*,unsigned int*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int vaQueryVideoProcFilterCaps ;

int
vlc_vaapi_QueryVideoProcFilterCaps(vlc_object_t *o, VADisplay dpy,
                                   VAContextID ctx, VAProcFilterType filter,
                                   void *caps, unsigned int *p_num_caps)
{
    VA_CALL(o, vaQueryVideoProcFilterCaps, dpy,
            ctx, filter, caps, p_num_caps);
    return VLC_SUCCESS;
error: return VLC_EGENERIC;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int VAProcPipelineCaps ;
typedef int VADisplay ;
typedef int VAContextID ;
typedef int VABufferID ;


 int VA_CALL (int *,int ,int ,int ,int *,unsigned int,int *) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int vaQueryVideoProcPipelineCaps ;

int
vlc_vaapi_QueryVideoProcPipelineCaps(vlc_object_t *o, VADisplay dpy,
                                     VAContextID ctx, VABufferID *filters,
                                     unsigned int num_filters,
                                     VAProcPipelineCaps *pipeline_caps)
{
    VA_CALL(o, vaQueryVideoProcPipelineCaps, dpy,
            ctx, filters, num_filters, pipeline_caps);
    return VLC_SUCCESS;
error: return VLC_EGENERIC;
}

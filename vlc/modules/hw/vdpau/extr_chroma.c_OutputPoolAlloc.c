
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int video_format_t ;
typedef int vdp_t ;
typedef int picture_pool_t ;
typedef int VdpRGBAFormat ;
typedef int VdpDevice ;


 scalar_t__ OutputCheckFormat (int *,int *,int ,int const*,int *) ;
 int * vlc_vdp_output_pool_create (int *,int ,int const*,int) ;

__attribute__((used)) static picture_pool_t *OutputPoolAlloc(vlc_object_t *obj, vdp_t *vdp,
    VdpDevice dev, const video_format_t *restrict fmt)
{

    VdpRGBAFormat rgb_fmt;

    if (OutputCheckFormat(obj, vdp, dev, fmt, &rgb_fmt))
        return ((void*)0);


    return vlc_vdp_output_pool_create(vdp, rgb_fmt, fmt, 3);
}

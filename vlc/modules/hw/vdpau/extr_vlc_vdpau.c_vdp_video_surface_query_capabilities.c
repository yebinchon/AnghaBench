
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* video_surface_query_capabilities ) (int ,int ,int *,int *,int *) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ vdp_t ;
typedef int uint32_t ;
typedef int VdpStatus ;
typedef int VdpDevice ;
typedef int VdpChromaType ;
typedef int VdpBool ;


 int CHECK_FUNC (int ) ;
 int VIDEO_SURFACE_QUERY_CAPABILITIES ;
 int stub1 (int ,int ,int *,int *,int *) ;

VdpStatus vdp_video_surface_query_capabilities(const vdp_t *vdp, VdpDevice dev,
    VdpChromaType type, VdpBool *ok, uint32_t *mw, uint32_t *mh)
{
    CHECK_FUNC(VIDEO_SURFACE_QUERY_CAPABILITIES);
    return vdp->vt.video_surface_query_capabilities(dev, type, ok, mw, mh);
}

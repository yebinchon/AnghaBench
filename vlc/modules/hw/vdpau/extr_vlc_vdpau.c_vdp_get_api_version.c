
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* get_api_version ) (int *) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ vdp_t ;
typedef int uint32_t ;
typedef int VdpStatus ;


 int CHECK_FUNC (int ) ;
 int GET_API_VERSION ;
 int stub1 (int *) ;

VdpStatus vdp_get_api_version(const vdp_t *vdp, uint32_t *ver)
{
    CHECK_FUNC(GET_API_VERSION);
    return vdp->vt.get_api_version(ver);
}

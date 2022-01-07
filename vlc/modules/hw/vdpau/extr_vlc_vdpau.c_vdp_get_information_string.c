
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* get_information_string ) (char const**) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ vdp_t ;
typedef int VdpStatus ;


 int CHECK_FUNC (int ) ;
 int GET_INFORMATION_STRING ;
 int stub1 (char const**) ;

VdpStatus vdp_get_information_string(const vdp_t *vdp, const char **str)
{
    CHECK_FUNC(GET_INFORMATION_STRING);
    return vdp->vt.get_information_string(str);
}

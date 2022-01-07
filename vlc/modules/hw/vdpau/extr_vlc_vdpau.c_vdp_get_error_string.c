
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* (* get_error_string ) (scalar_t__) ;} ;
struct TYPE_5__ {TYPE_1__ vt; int ** funcs; } ;
typedef TYPE_2__ vdp_t ;
typedef scalar_t__ VdpStatus ;


 size_t VDP_FUNC_ID_GET_ERROR_STRING ;
 scalar_t__ VDP_STATUS_OK ;
 char const* stub1 (scalar_t__) ;
 scalar_t__ unlikely (int ) ;

const char *vdp_get_error_string(const vdp_t *vdp, VdpStatus status)
{
    if (unlikely(vdp->funcs[VDP_FUNC_ID_GET_ERROR_STRING] == ((void*)0)))
        return (status != VDP_STATUS_OK) ? "Unknown error" : "No error";
    return vdp->vt.get_error_string(status);
}

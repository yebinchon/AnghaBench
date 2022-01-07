
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* sys; } ;
typedef TYPE_2__ vout_display_t ;
struct wddm_version {int wddm; int revision; } ;
struct TYPE_5__ {int d3d_dev; } ;


 scalar_t__ D3D11CheckDriverVersion (int *,int ,struct wddm_version*) ;
 int GPU_MANUFACTURER_AMD ;
 scalar_t__ VLC_SUCCESS ;
 int msg_Dbg (TYPE_2__*,char*) ;

__attribute__((used)) static bool CanUseTextureArray(vout_display_t *vd)
{

    (void) vd;
    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ drm_fd; } ;
typedef TYPE_1__ vout_display_sys_t ;
struct TYPE_7__ {scalar_t__ p_sys; } ;
typedef TYPE_2__ picture_t ;
struct TYPE_8__ {scalar_t__ p_voutsys; } ;
typedef TYPE_3__ picture_sys_t ;


 int DRM_CLIENT_CAP_UNIVERSAL_PLANES ;
 int DestroyFB (TYPE_1__*,int) ;
 int MAXHWBUF ;
 int drmDropMaster (scalar_t__) ;
 int drmSetClientCap (scalar_t__,int ,int ) ;
 int free (scalar_t__) ;
 int vlc_close (scalar_t__) ;

__attribute__((used)) static void CustomDestroyPicture(picture_t *p_picture)
{
    picture_sys_t *psys = (picture_sys_t*)p_picture->p_sys;
    vout_display_sys_t *sys = (vout_display_sys_t *)psys->p_voutsys;
    int c;

    for (c = 0; c < MAXHWBUF; c++)
        DestroyFB(sys, c);

    drmSetClientCap(sys->drm_fd, DRM_CLIENT_CAP_UNIVERSAL_PLANES, 0);
    drmDropMaster(sys->drm_fd);
    vlc_close(sys->drm_fd);
    sys->drm_fd = 0;
    free(p_picture->p_sys);
}

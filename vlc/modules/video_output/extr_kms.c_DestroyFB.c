
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int drm_fd; int * fb; int size; int * map; int * handle; } ;
typedef TYPE_1__ vout_display_sys_t ;
typedef size_t uint32_t ;
struct drm_mode_destroy_dumb {int handle; } ;


 int DRM_IOCTL_MODE_DESTROY_DUMB ;
 int drmIoctl (int ,int ,struct drm_mode_destroy_dumb*) ;
 int drmModeRmFB (int ,int ) ;
 int munmap (int ,int ) ;

__attribute__((used)) static void DestroyFB(vout_display_sys_t const *sys, uint32_t const buf)
{
    struct drm_mode_destroy_dumb destroy_req = { .handle = sys->handle[buf] };

    munmap(sys->map[buf], sys->size);
    drmModeRmFB(sys->drm_fd, sys->fb[buf]);
    drmIoctl(sys->drm_fd, DRM_IOCTL_MODE_DESTROY_DUMB, &destroy_req);
}

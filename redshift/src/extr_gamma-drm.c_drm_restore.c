
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fd; TYPE_2__* crtcs; } ;
typedef TYPE_1__ drm_state_t ;
struct TYPE_5__ {scalar_t__ crtc_num; int b_gamma; int g_gamma; int * r_gamma; int gamma_size; int crtc_id; } ;
typedef TYPE_2__ drm_crtc_state_t ;


 int drmModeCrtcSetGamma (int ,int ,int ,int *,int ,int ) ;

__attribute__((used)) static void
drm_restore(drm_state_t *state)
{
 drm_crtc_state_t *crtcs = state->crtcs;
 while (crtcs->crtc_num >= 0) {
  if (crtcs->r_gamma != ((void*)0)) {
   drmModeCrtcSetGamma(state->fd, crtcs->crtc_id, crtcs->gamma_size,
         crtcs->r_gamma, crtcs->g_gamma, crtcs->b_gamma);
  }
  crtcs++;
 }
}

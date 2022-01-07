
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int crtc_num; int fd; int * res; struct TYPE_5__* crtcs; struct TYPE_5__* r_gamma; } ;
typedef TYPE_1__ drm_state_t ;
typedef TYPE_1__ drm_crtc_state_t ;


 int close (int) ;
 int drmModeFreeResources (int *) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void
drm_free(drm_state_t *state)
{
 if (state->crtcs != ((void*)0)) {
  drm_crtc_state_t *crtcs = state->crtcs;
  while (crtcs->crtc_num >= 0) {
   free(crtcs->r_gamma);
   crtcs->crtc_num = -1;
   crtcs++;
  }
  free(state->crtcs);
  state->crtcs = ((void*)0);
 }
 if (state->res != ((void*)0)) {
  drmModeFreeResources(state->res);
  state->res = ((void*)0);
 }
 if (state->fd >= 0) {
  close(state->fd);
  state->fd = -1;
 }

 free(state);
}

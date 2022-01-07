
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef double uint16_t ;
struct TYPE_4__ {int fd; TYPE_2__* crtcs; } ;
typedef TYPE_1__ drm_state_t ;
struct TYPE_5__ {scalar_t__ crtc_num; int gamma_size; int crtc_id; } ;
typedef TYPE_2__ drm_crtc_state_t ;
typedef int color_setting_t ;


 int UINT16_MAX ;
 int colorramp_fill (double*,double*,double*,int,int const*) ;
 int drmModeCrtcSetGamma (int ,int ,int,double*,double*,double*) ;
 int free (double*) ;
 double* malloc (int) ;
 int perror (char*) ;
 double* realloc (double*,int) ;

__attribute__((used)) static int
drm_set_temperature(
 drm_state_t *state, const color_setting_t *setting, int preserve)
{
 drm_crtc_state_t *crtcs = state->crtcs;
 int last_gamma_size = 0;
 uint16_t *r_gamma = ((void*)0);
 uint16_t *g_gamma = ((void*)0);
 uint16_t *b_gamma = ((void*)0);

 for (; crtcs->crtc_num >= 0; crtcs++) {
  if (crtcs->gamma_size <= 1)
   continue;
  if (crtcs->gamma_size != last_gamma_size) {
   if (last_gamma_size == 0) {
    r_gamma = malloc(3 * crtcs->gamma_size * sizeof(uint16_t));
    g_gamma = r_gamma + crtcs->gamma_size;
    b_gamma = g_gamma + crtcs->gamma_size;
   } else if (crtcs->gamma_size > last_gamma_size) {
    r_gamma = realloc(r_gamma, 3 * crtcs->gamma_size * sizeof(uint16_t));
    g_gamma = r_gamma + crtcs->gamma_size;
    b_gamma = g_gamma + crtcs->gamma_size;
   }
   if (r_gamma == ((void*)0)) {
    perror(last_gamma_size == 0 ? "malloc" : "realloc");
    return -1;
   }
   last_gamma_size = crtcs->gamma_size;
  }


  int ramp_size = crtcs->gamma_size;
  for (int i = 0; i < ramp_size; i++) {
   uint16_t value = (double)i/ramp_size * (UINT16_MAX+1);
   r_gamma[i] = value;
   g_gamma[i] = value;
   b_gamma[i] = value;
  }

  colorramp_fill(r_gamma, g_gamma, b_gamma, crtcs->gamma_size,
          setting);
  drmModeCrtcSetGamma(state->fd, crtcs->crtc_id, crtcs->gamma_size,
        r_gamma, g_gamma, b_gamma);
 }

 free(r_gamma);

 return 0;
}

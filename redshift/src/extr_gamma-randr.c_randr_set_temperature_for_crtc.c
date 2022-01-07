
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xcb_void_cookie_t ;
typedef int xcb_randr_crtc_t ;
struct TYPE_7__ {int error_code; } ;
typedef TYPE_2__ xcb_generic_error_t ;
typedef double uint16_t ;
struct TYPE_8__ {int crtc_count; int conn; TYPE_1__* crtcs; } ;
typedef TYPE_3__ randr_state_t ;
typedef int color_setting_t ;
struct TYPE_6__ {unsigned int ramp_size; int saved_ramps; int crtc; } ;


 int UINT16_MAX ;
 char* _ (char*) ;
 int colorramp_fill (double*,double*,double*,unsigned int,int const*) ;
 int fprintf (int ,char*,...) ;
 int free (double*) ;
 double* malloc (int) ;
 int memcpy (double*,int ,int) ;
 int perror (char*) ;
 int stderr ;
 int xcb_randr_set_crtc_gamma_checked (int ,int ,unsigned int,double*,double*,double*) ;
 TYPE_2__* xcb_request_check (int ,int ) ;

__attribute__((used)) static int
randr_set_temperature_for_crtc(
 randr_state_t *state, int crtc_num, const color_setting_t *setting,
 int preserve)
{
 xcb_generic_error_t *error;

 if (crtc_num >= state->crtc_count || crtc_num < 0) {
  fprintf(stderr, _("CRTC %d does not exist. "),
   crtc_num);
  if (state->crtc_count > 1) {
   fprintf(stderr, _("Valid CRTCs are [0-%d].\n"),
    state->crtc_count-1);
  } else {
   fprintf(stderr, _("Only CRTC 0 exists.\n"));
  }

  return -1;
 }

 xcb_randr_crtc_t crtc = state->crtcs[crtc_num].crtc;
 unsigned int ramp_size = state->crtcs[crtc_num].ramp_size;


 uint16_t *gamma_ramps = malloc(3*ramp_size*sizeof(uint16_t));
 if (gamma_ramps == ((void*)0)) {
  perror("malloc");
  return -1;
 }

 uint16_t *gamma_r = &gamma_ramps[0*ramp_size];
 uint16_t *gamma_g = &gamma_ramps[1*ramp_size];
 uint16_t *gamma_b = &gamma_ramps[2*ramp_size];

 if (preserve) {

  memcpy(gamma_ramps, state->crtcs[crtc_num].saved_ramps,
         3*ramp_size*sizeof(uint16_t));
 } else {

  for (int i = 0; i < ramp_size; i++) {
   uint16_t value = (double)i/ramp_size * (UINT16_MAX+1);
   gamma_r[i] = value;
   gamma_g[i] = value;
   gamma_b[i] = value;
  }
 }

 colorramp_fill(gamma_r, gamma_g, gamma_b, ramp_size,
         setting);


 xcb_void_cookie_t gamma_set_cookie =
  xcb_randr_set_crtc_gamma_checked(state->conn, crtc,
       ramp_size, gamma_r,
       gamma_g, gamma_b);
 error = xcb_request_check(state->conn, gamma_set_cookie);

 if (error) {
  fprintf(stderr, _("`%s' returned error %d\n"),
   "RANDR Set CRTC Gamma", error->error_code);
  free(gamma_ramps);
  return -1;
 }

 free(gamma_ramps);

 return 0;
}

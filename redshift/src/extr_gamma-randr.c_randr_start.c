
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_22__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int xcb_setup_t ;
struct TYPE_25__ {scalar_t__ rem; TYPE_1__* data; } ;
typedef TYPE_2__ xcb_screen_iterator_t ;
struct TYPE_26__ {int num_crtcs; unsigned int size; } ;
typedef TYPE_3__ xcb_randr_get_screen_resources_current_reply_t ;
typedef int xcb_randr_get_screen_resources_current_cookie_t ;
typedef TYPE_3__ xcb_randr_get_crtc_gamma_size_reply_t ;
typedef int xcb_randr_get_crtc_gamma_size_cookie_t ;
typedef TYPE_3__ xcb_randr_get_crtc_gamma_reply_t ;
typedef int xcb_randr_get_crtc_gamma_cookie_t ;
typedef int xcb_randr_crtc_t ;
struct TYPE_27__ {int error_code; } ;
typedef TYPE_6__ xcb_generic_error_t ;
typedef int uint16_t ;
struct TYPE_28__ {int screen_num; int preferred_screen; int crtc_count; TYPE_22__* crtcs; int conn; TYPE_1__* screen; } ;
typedef TYPE_7__ randr_state_t ;
typedef int randr_crtc_state_t ;
struct TYPE_24__ {unsigned int ramp_size; int * saved_ramps; int crtc; } ;
struct TYPE_23__ {int root; } ;


 char* _ (char*) ;
 TYPE_22__* calloc (int,int) ;
 int fprintf (int ,char*,...) ;
 int free (TYPE_3__*) ;
 int * malloc (int) ;
 int memcpy (int *,int *,unsigned int) ;
 int perror (char*) ;
 int stderr ;
 int * xcb_get_setup (int ) ;
 int xcb_randr_get_crtc_gamma (int ,int ) ;
 int * xcb_randr_get_crtc_gamma_blue (TYPE_3__*) ;
 int * xcb_randr_get_crtc_gamma_green (TYPE_3__*) ;
 int * xcb_randr_get_crtc_gamma_red (TYPE_3__*) ;
 TYPE_3__* xcb_randr_get_crtc_gamma_reply (int ,int ,TYPE_6__**) ;
 int xcb_randr_get_crtc_gamma_size (int ,int ) ;
 TYPE_3__* xcb_randr_get_crtc_gamma_size_reply (int ,int ,TYPE_6__**) ;
 int xcb_randr_get_screen_resources_current (int ,int ) ;
 int * xcb_randr_get_screen_resources_current_crtcs (TYPE_3__*) ;
 TYPE_3__* xcb_randr_get_screen_resources_current_reply (int ,int ,TYPE_6__**) ;
 int xcb_screen_next (TYPE_2__*) ;
 TYPE_2__ xcb_setup_roots_iterator (int const*) ;

__attribute__((used)) static int
randr_start(randr_state_t *state)
{
 xcb_generic_error_t *error;

 int screen_num = state->screen_num;
 if (screen_num < 0) screen_num = state->preferred_screen;


 const xcb_setup_t *setup = xcb_get_setup(state->conn);
 xcb_screen_iterator_t iter = xcb_setup_roots_iterator(setup);
 state->screen = ((void*)0);

 for (int i = 0; iter.rem > 0; i++) {
  if (i == screen_num) {
   state->screen = iter.data;
   break;
  }
  xcb_screen_next(&iter);
 }

 if (state->screen == ((void*)0)) {
  fprintf(stderr, _("Screen %i could not be found.\n"),
   screen_num);
  return -1;
 }


 xcb_randr_get_screen_resources_current_cookie_t res_cookie =
  xcb_randr_get_screen_resources_current(state->conn,
             state->screen->root);
 xcb_randr_get_screen_resources_current_reply_t *res_reply =
  xcb_randr_get_screen_resources_current_reply(state->conn,
            res_cookie,
            &error);

 if (error) {
  fprintf(stderr, _("`%s' returned error %d\n"),
   "RANDR Get Screen Resources Current",
   error->error_code);
  return -1;
 }

 state->crtc_count = res_reply->num_crtcs;
 state->crtcs = calloc(state->crtc_count, sizeof(randr_crtc_state_t));
 if (state->crtcs == ((void*)0)) {
  perror("malloc");
  state->crtc_count = 0;
  return -1;
 }

 xcb_randr_crtc_t *crtcs =
  xcb_randr_get_screen_resources_current_crtcs(res_reply);


 for (int i = 0; i < state->crtc_count; i++) {
  state->crtcs[i].crtc = crtcs[i];
 }

 free(res_reply);




 for (int i = 0; i < state->crtc_count; i++) {
  xcb_randr_crtc_t crtc = state->crtcs[i].crtc;


  xcb_randr_get_crtc_gamma_size_cookie_t gamma_size_cookie =
   xcb_randr_get_crtc_gamma_size(state->conn, crtc);
  xcb_randr_get_crtc_gamma_size_reply_t *gamma_size_reply =
   xcb_randr_get_crtc_gamma_size_reply(state->conn,
           gamma_size_cookie,
           &error);

  if (error) {
   fprintf(stderr, _("`%s' returned error %d\n"),
    "RANDR Get CRTC Gamma Size",
    error->error_code);
   return -1;
  }

  unsigned int ramp_size = gamma_size_reply->size;
  state->crtcs[i].ramp_size = ramp_size;

  free(gamma_size_reply);

  if (ramp_size == 0) {
   fprintf(stderr, _("Gamma ramp size too small: %i\n"),
    ramp_size);
   return -1;
  }


  xcb_randr_get_crtc_gamma_cookie_t gamma_get_cookie =
   xcb_randr_get_crtc_gamma(state->conn, crtc);
  xcb_randr_get_crtc_gamma_reply_t *gamma_get_reply =
   xcb_randr_get_crtc_gamma_reply(state->conn,
             gamma_get_cookie,
             &error);

  if (error) {
   fprintf(stderr, _("`%s' returned error %d\n"),
    "RANDR Get CRTC Gamma", error->error_code);
   return -1;
  }

  uint16_t *gamma_r =
   xcb_randr_get_crtc_gamma_red(gamma_get_reply);
  uint16_t *gamma_g =
   xcb_randr_get_crtc_gamma_green(gamma_get_reply);
  uint16_t *gamma_b =
   xcb_randr_get_crtc_gamma_blue(gamma_get_reply);


  state->crtcs[i].saved_ramps =
   malloc(3*ramp_size*sizeof(uint16_t));
  if (state->crtcs[i].saved_ramps == ((void*)0)) {
   perror("malloc");
   free(gamma_get_reply);
   return -1;
  }


  memcpy(&state->crtcs[i].saved_ramps[0*ramp_size], gamma_r,
         ramp_size*sizeof(uint16_t));
  memcpy(&state->crtcs[i].saved_ramps[1*ramp_size], gamma_g,
         ramp_size*sizeof(uint16_t));
  memcpy(&state->crtcs[i].saved_ramps[2*ramp_size], gamma_b,
         ramp_size*sizeof(uint16_t));

  free(gamma_get_reply);
 }

 return 0;
}

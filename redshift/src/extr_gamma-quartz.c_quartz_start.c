
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int display_count; TYPE_1__* displays; } ;
typedef TYPE_2__ quartz_state_t ;
typedef int quartz_display_state_t ;
struct TYPE_4__ {float* saved_ramps; int ramp_size; int display; } ;
typedef scalar_t__ CGError ;
typedef int CGDirectDisplayID ;


 int CGDisplayGammaTableCapacity (int ) ;
 scalar_t__ CGGetDisplayTransferByTable (int ,int,float*,float*,float*,int*) ;
 scalar_t__ CGGetOnlineDisplayList (int,int *,int*) ;
 char* _ (char*) ;
 int fprintf (int ,char*,int) ;
 int fputs (char*,int ) ;
 int free (int *) ;
 scalar_t__ kCGErrorSuccess ;
 void* malloc (int) ;
 int perror (char*) ;
 int stderr ;

__attribute__((used)) static int
quartz_start(quartz_state_t *state)
{
 CGError error;
 uint32_t display_count;


 error = CGGetOnlineDisplayList(0, ((void*)0), &display_count);
 if (error != kCGErrorSuccess) return -1;

 state->display_count = display_count;

 CGDirectDisplayID* displays =
  malloc(sizeof(CGDirectDisplayID)*display_count);
 if (displays == ((void*)0)) {
  perror("malloc");
  return -1;
 }


 error = CGGetOnlineDisplayList(display_count, displays,
           &display_count);
 if (error != kCGErrorSuccess) {
  free(displays);
  return -1;
 }


 state->displays = malloc(display_count *
     sizeof(quartz_display_state_t));
 if (state->displays == ((void*)0)) {
  perror("malloc");
  free(displays);
  return -1;
 }


 for (int i = 0; i < display_count; i++) {
  state->displays[i].display = displays[i];
  state->displays[i].saved_ramps = ((void*)0);
 }

 free(displays);


 for (int i = 0; i < display_count; i++) {
  CGDirectDisplayID display = state->displays[i].display;

  uint32_t ramp_size = CGDisplayGammaTableCapacity(display);
  if (ramp_size == 0) {
   fprintf(stderr, _("Gamma ramp size too small: %i\n"),
    ramp_size);
   return -1;
  }

  state->displays[i].ramp_size = ramp_size;


  state->displays[i].saved_ramps =
   malloc(3 * ramp_size * sizeof(float));
  if (state->displays[i].saved_ramps == ((void*)0)) {
   perror("malloc");
   return -1;
  }

  float *gamma_r = &state->displays[i].saved_ramps[0*ramp_size];
  float *gamma_g = &state->displays[i].saved_ramps[1*ramp_size];
  float *gamma_b = &state->displays[i].saved_ramps[2*ramp_size];


  uint32_t sample_count;
  error = CGGetDisplayTransferByTable(display, ramp_size,
          gamma_r, gamma_g, gamma_b,
          &sample_count);
  if (error != kCGErrorSuccess ||
      sample_count != ramp_size) {
   fputs(_("Unable to save current gamma ramp.\n"),
         stderr);
   return -1;
  }
 }

 return 0;
}

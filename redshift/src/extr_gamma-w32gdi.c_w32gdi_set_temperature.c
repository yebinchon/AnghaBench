
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int saved_ramps; } ;
typedef TYPE_1__ w32gdi_state_t ;
typedef int color_setting_t ;
typedef double WORD ;
typedef int * HDC ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int GAMMA_RAMP_SIZE ;
 int * GetDC (int *) ;
 int MAX_ATTEMPTS ;
 int ReleaseDC (int *,int *) ;
 scalar_t__ SetDeviceGammaRamp (int *,double*) ;
 int UINT16_MAX ;
 int _ (char*) ;
 int colorramp_fill (double*,double*,double*,int,int const*) ;
 int fputs (int ,int ) ;
 int free (double*) ;
 double* malloc (int) ;
 int memcpy (double*,int ,int) ;
 int perror (char*) ;
 int stderr ;

__attribute__((used)) static int
w32gdi_set_temperature(
 w32gdi_state_t *state, const color_setting_t *setting, int preserve)
{
 BOOL r;


 HDC hDC = GetDC(((void*)0));
 if (hDC == ((void*)0)) {
  fputs(_("Unable to open device context.\n"), stderr);
  return -1;
 }


 WORD *gamma_ramps = malloc(3*GAMMA_RAMP_SIZE*sizeof(WORD));
 if (gamma_ramps == ((void*)0)) {
  perror("malloc");
  ReleaseDC(((void*)0), hDC);
  return -1;
 }

 WORD *gamma_r = &gamma_ramps[0*GAMMA_RAMP_SIZE];
 WORD *gamma_g = &gamma_ramps[1*GAMMA_RAMP_SIZE];
 WORD *gamma_b = &gamma_ramps[2*GAMMA_RAMP_SIZE];

 if (preserve) {

  memcpy(gamma_ramps, state->saved_ramps,
         3*GAMMA_RAMP_SIZE*sizeof(WORD));
 } else {

  for (int i = 0; i < GAMMA_RAMP_SIZE; i++) {
   WORD value = (double)i/GAMMA_RAMP_SIZE *
    (UINT16_MAX+1);
   gamma_r[i] = value;
   gamma_g[i] = value;
   gamma_b[i] = value;
  }
 }

 colorramp_fill(gamma_r, gamma_g, gamma_b, GAMMA_RAMP_SIZE,
         setting);


 r = FALSE;
 for (int i = 0; i < MAX_ATTEMPTS && !r; i++) {



  r = SetDeviceGammaRamp(hDC, gamma_ramps);
 }
 if (!r) {
  fputs(_("Unable to set gamma ramps.\n"), stderr);
  free(gamma_ramps);
  ReleaseDC(((void*)0), hDC);
  return -1;
 }

 free(gamma_ramps);


 ReleaseDC(((void*)0), hDC);

 return 0;
}

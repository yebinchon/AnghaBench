
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * saved_ramps; } ;
typedef TYPE_1__ w32gdi_state_t ;
typedef int WORD ;
typedef int * HDC ;
typedef int BOOL ;


 int CM_GAMMA_RAMP ;
 int COLORMGMTCAPS ;
 int GAMMA_RAMP_SIZE ;
 int * GetDC (int *) ;
 int GetDeviceCaps (int *,int ) ;
 int GetDeviceGammaRamp (int *,int *) ;
 int ReleaseDC (int *,int *) ;
 int _ (char*) ;
 int fputs (int ,int ) ;
 int * malloc (int) ;
 int perror (char*) ;
 int stderr ;

__attribute__((used)) static int
w32gdi_start(w32gdi_state_t *state)
{
 BOOL r;


 HDC hDC = GetDC(((void*)0));
 if (hDC == ((void*)0)) {
  fputs(_("Unable to open device context.\n"), stderr);
  return -1;
 }


 int cmcap = GetDeviceCaps(hDC, COLORMGMTCAPS);
 if (cmcap != CM_GAMMA_RAMP) {
  fputs(_("Display device does not support gamma ramps.\n"),
        stderr);
  return -1;
 }


 state->saved_ramps = malloc(3*GAMMA_RAMP_SIZE*sizeof(WORD));
 if (state->saved_ramps == ((void*)0)) {
  perror("malloc");
  ReleaseDC(((void*)0), hDC);
  return -1;
 }


 r = GetDeviceGammaRamp(hDC, state->saved_ramps);
 if (!r) {
  fputs(_("Unable to save current gamma ramp.\n"), stderr);
  ReleaseDC(((void*)0), hDC);
  return -1;
 }


 ReleaseDC(((void*)0), hDC);

 return 0;
}

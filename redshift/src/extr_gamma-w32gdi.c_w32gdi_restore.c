
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int saved_ramps; } ;
typedef TYPE_1__ w32gdi_state_t ;
typedef int * HDC ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int * GetDC (int *) ;
 int MAX_ATTEMPTS ;
 int ReleaseDC (int *,int *) ;
 scalar_t__ SetDeviceGammaRamp (int *,int ) ;
 int _ (char*) ;
 int fputs (int ,int ) ;
 int stderr ;

__attribute__((used)) static void
w32gdi_restore(w32gdi_state_t *state)
{

 HDC hDC = GetDC(((void*)0));
 if (hDC == ((void*)0)) {
  fputs(_("Unable to open device context.\n"), stderr);
  return;
 }


 BOOL r = FALSE;
 for (int i = 0; i < MAX_ATTEMPTS && !r; i++) {



  r = SetDeviceGammaRamp(hDC, state->saved_ramps);
 }
 if (!r) fputs(_("Unable to restore gamma ramps.\n"), stderr);


 ReleaseDC(((void*)0), hDC);
}

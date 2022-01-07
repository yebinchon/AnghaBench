
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int Window ;
struct TYPE_5__ {scalar_t__ decorations; int flags; } ;
struct TYPE_4__ {int display; } ;
typedef TYPE_1__ RDPCLIENT ;
typedef TYPE_2__ PropMotifWmHints ;
typedef int Atom ;


 int False ;
 int MWM_HINTS_DECORATIONS ;
 int PROP_MOTIF_WM_HINTS_ELEMENTS ;
 int PropModeReplace ;
 int XChangeProperty (int ,int ,int ,int ,int,int ,unsigned char*,int ) ;
 int XInternAtom (int ,char*,int ) ;
 int warning (char*) ;

__attribute__((used)) static void
mwm_hide_decorations(RDPCLIENT * This, Window wnd)
{
 PropMotifWmHints motif_hints;
 Atom hintsatom;


 motif_hints.flags = MWM_HINTS_DECORATIONS;
 motif_hints.decorations = 0;


 hintsatom = XInternAtom(This->display, "_MOTIF_WM_HINTS", False);
 if (!hintsatom)
 {
  warning("Failed to get atom _MOTIF_WM_HINTS: probably your window manager does not support MWM hints\n");
  return;
 }

 XChangeProperty(This->display, wnd, hintsatom, hintsatom, 32, PropModeReplace,
   (unsigned char *) &motif_hints, PROP_MOTIF_WM_HINTS_ELEMENTS);

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * curwin; int * curbuf; int * interp; } ;


 int Tcl_DeleteInterp (int *) ;
 int Tcl_Free (int *) ;
 int Tcl_InterpDeleted (int *) ;
 int Tcl_Release (int *) ;
 TYPE_1__ tclinfo ;

__attribute__((used)) static void
tcldelthisinterp()
{
    if (!Tcl_InterpDeleted(tclinfo.interp))
 Tcl_DeleteInterp(tclinfo.interp);
    Tcl_Release(tclinfo.interp);
    tclinfo.interp = ((void*)0);
    Tcl_Free(tclinfo.curbuf);
    Tcl_Free(tclinfo.curwin);
    tclinfo.curbuf = tclinfo.curwin = ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* curbuf; char* curwin; int interp; } ;


 int Tcl_UpdateLinkedVar (int ,char*) ;
 int VARNAME_SIZE ;
 char* VAR_CURBUF ;
 char* VAR_CURWIN ;
 char* VAR_LBASE ;
 char* VAR_RANGE1 ;
 char* VAR_RANGE2 ;
 char* VAR_RANGE3 ;
 int curbuf ;
 int curwin ;
 int strcpy (char*,char*) ;
 char* tclgetbuffer (int ,int ) ;
 char* tclgetwindow (int ,int ) ;
 TYPE_1__ tclinfo ;

__attribute__((used)) static void
tclupdatevars()
{
    char varname[VARNAME_SIZE];
    char *name;

    strcpy(varname, VAR_RANGE1);
    Tcl_UpdateLinkedVar(tclinfo.interp, varname);
    strcpy(varname, VAR_RANGE2);
    Tcl_UpdateLinkedVar(tclinfo.interp, varname);
    strcpy(varname, VAR_RANGE3);
    Tcl_UpdateLinkedVar(tclinfo.interp, varname);

    strcpy(varname, VAR_LBASE);
    Tcl_UpdateLinkedVar(tclinfo.interp, varname);

    name = tclgetbuffer(tclinfo.interp, curbuf);
    strcpy(tclinfo.curbuf, name);
    strcpy(varname, VAR_CURBUF);
    Tcl_UpdateLinkedVar(tclinfo.interp, varname);

    name = tclgetwindow(tclinfo.interp, curwin);
    strcpy(tclinfo.curwin, name);
    strcpy(varname, VAR_CURWIN);
    Tcl_UpdateLinkedVar(tclinfo.interp, varname);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dying; int * dpy; } ;


 int CARDINAL ;
 int EMSG (int ) ;
 int FAIL ;
 int OK ;
 int TRUE ;
 int VIM_CLASS ;
 int VIM_NAME ;
 int XtNumber (int ) ;
 int * XtOpenDisplay (int *,int ,int ,int ,int ,int ,int,int ) ;
 int XtSetLanguageProc (int *,int *,int *) ;
 int _ (int ) ;
 int * app_context ;
 int cmdline_options ;
 int e_opendisp ;
 TYPE_1__ gui ;
 int gui_argc ;
 int gui_argv ;
 int open_app_context () ;

int
gui_mch_init_check()
{



    open_app_context();
    if (app_context != ((void*)0))
 gui.dpy = XtOpenDisplay(app_context, 0, VIM_NAME, VIM_CLASS,
  cmdline_options, XtNumber(cmdline_options),
  CARDINAL &gui_argc, gui_argv);

    if (app_context == ((void*)0) || gui.dpy == ((void*)0))
    {
 gui.dying = TRUE;
 EMSG(_(e_opendisp));
 return FAIL;
    }
    return OK;
}

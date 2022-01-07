
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dying; } ;


 int EMSG (int ) ;
 int FAIL ;
 int OK ;
 int TRUE ;
 int _ (char*) ;
 scalar_t__ e_opendisp ;
 int g_set_prgname (char*) ;
 int gtk_init_check (int *,int *) ;
 scalar_t__ gtk_socket_id ;
 TYPE_1__ gui ;
 int gui_argc ;
 int gui_argv ;
 int using_gnome ;

int
gui_mch_init_check(void)
{
    g_set_prgname("gvim");


    if (!gtk_init_check(&gui_argc, &gui_argv))
    {
 gui.dying = TRUE;
 EMSG(_((char *)e_opendisp));
 return FAIL;
    }

    return OK;
}

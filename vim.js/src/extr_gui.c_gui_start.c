
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int char_u ;
struct TYPE_2__ {scalar_t__ in_use; scalar_t__ dofork; } ;


 int EVENT_GUIENTER ;
 int EVENT_GUIFAILED ;
 scalar_t__ FALSE ;
 int GO_FORG ;
 scalar_t__ OK ;
 int TMODE_COOK ;
 int TMODE_RAW ;
 int T_NAME ;
 int apply_autocmds (int ,int *,int *,scalar_t__,int ) ;
 int curbuf ;
 int cursor_on () ;
 int exit (int) ;
 scalar_t__ full_screen ;
 TYPE_1__ gui ;
 int gui_attempt_start () ;
 int gui_do_fork () ;
 scalar_t__ gui_mch_init_check () ;
 int gui_mch_update () ;
 int p_go ;
 int set_title_defaults () ;
 int settmode (int ) ;
 int termcapinit (int *) ;
 int vim_free (int *) ;
 int vim_strchr (int ,int ) ;
 int * vim_strsave (int ) ;

void
gui_start()
{
    char_u *old_term;
    static int recursive = 0;

    old_term = vim_strsave(T_NAME);

    settmode(TMODE_COOK);
    if (full_screen)
 cursor_on();
    full_screen = FALSE;

    ++recursive;
    {






 gui_attempt_start();
    }

    if (!gui.in_use)
    {
 termcapinit(old_term);
 settmode(TMODE_RAW);



    }

    vim_free(old_term);
    --recursive;
}

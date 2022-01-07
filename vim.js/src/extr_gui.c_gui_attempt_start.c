
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int char_u ;
typedef scalar_t__ Window ;
struct TYPE_2__ {int starting; scalar_t__ in_use; int event_time; } ;
typedef int Display ;


 int GDK_CURRENT_TIME ;
 scalar_t__ OK ;
 int TRUE ;
 int VV_WINDOWID ;
 int display_errors () ;
 TYPE_1__ gui ;
 scalar_t__ gui_get_x11_windis (scalar_t__*,int **) ;
 int set_vim_var_nr (int ,long) ;
 int termcapinit (int *) ;

__attribute__((used)) static void
gui_attempt_start()
{
    static int recursive = 0;

    ++recursive;
    gui.starting = TRUE;





    termcapinit((char_u *)"builtin_gui");
    gui.starting = recursive - 1;
    --recursive;
}

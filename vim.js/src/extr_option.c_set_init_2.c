
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int long_u ;
typedef int char_u ;
struct TYPE_2__ {int flags; } ;


 int OPT_FREE ;
 int OPT_LOCAL ;
 int P_WAS_SET ;
 int Rows ;
 int SHAPE_CURSOR ;
 int SHAPE_MOUSE ;
 int comp_col () ;
 int findoption (int *) ;
 int option_was_set (int *) ;
 TYPE_1__* options ;
 int p_cp ;
 int p_window ;
 int parse_printoptions () ;
 int parse_shape_opt (int ) ;
 int set_number_default (char*,int) ;
 int set_option_default (int,int ,int ) ;
 int set_string_option_direct (int *,int,int *,int ,int ) ;
 char* term_bg_default () ;

void
set_init_2()
{
    int idx;





    set_number_default("scroll", (long)((long_u)Rows >> 1));
    idx = findoption((char_u *)"scroll");
    if (idx >= 0 && !(options[idx].flags & P_WAS_SET))
 set_option_default(idx, OPT_LOCAL, p_cp);
    comp_col();





    if (!option_was_set((char_u *)"window"))
 p_window = Rows - 1;
    set_number_default("window", Rows - 1);
    idx = findoption((char_u *)"bg");
    if (idx >= 0 && !(options[idx].flags & P_WAS_SET)
       && *term_bg_default() == 'd')
    {
 set_string_option_direct(((void*)0), idx, (char_u *)"dark", OPT_FREE, 0);


 options[idx].flags &= ~P_WAS_SET;
    }
}

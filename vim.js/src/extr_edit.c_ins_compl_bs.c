
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int char_u ;
struct TYPE_3__ {int col; } ;
struct TYPE_4__ {TYPE_1__ w_cursor; } ;


 int CTRL_X_OMNI ;
 int K_BS ;
 int NUL ;
 scalar_t__ compl_col ;
 int * compl_curr_match ;
 int * compl_leader ;
 scalar_t__ compl_length ;
 int * compl_shown_match ;
 int ctrl_x_mode ;
 TYPE_2__* curwin ;
 scalar_t__ ins_compl_need_restart () ;
 int ins_compl_new_leader () ;
 int ins_compl_restart () ;
 int mb_ptr_back (int *,int *) ;
 int * ml_get_curline () ;
 int vim_free (int *) ;
 int * vim_strnsave (int *,scalar_t__) ;

__attribute__((used)) static int
ins_compl_bs()
{
    char_u *line;
    char_u *p;

    line = ml_get_curline();
    p = line + curwin->w_cursor.col;
    mb_ptr_back(line, p);



    if ((int)(p - line) - (int)compl_col < 0
     || ((int)(p - line) - (int)compl_col == 0
  && (ctrl_x_mode & CTRL_X_OMNI) == 0))
 return K_BS;



    if (curwin->w_cursor.col <= compl_col + compl_length
        || ins_compl_need_restart())
 ins_compl_restart();

    vim_free(compl_leader);
    compl_leader = vim_strnsave(line + compl_col, (int)(p - line) - compl_col);
    if (compl_leader != ((void*)0))
    {
 ins_compl_new_leader();
 if (compl_shown_match != ((void*)0))

     compl_curr_match = compl_shown_match;
 return NUL;
    }
    return K_BS;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lnum; } ;
typedef TYPE_1__ pos_T ;
typedef int colnr_T ;
typedef int char_u ;
struct TYPE_6__ {int b_p_inde; } ;
struct TYPE_5__ {int w_set_curswant; int w_curswant; TYPE_1__ w_cursor; } ;


 int INSERT ;
 int OPT_LOCAL ;
 int State ;
 int VV_LNUM ;
 int check_cursor () ;
 TYPE_3__* curbuf ;
 TYPE_2__* curwin ;
 int eval_to_number (int ) ;
 int get_indent () ;
 int sandbox ;
 int set_vim_var_nr (int ,int ) ;
 int textlock ;
 int was_set_insecurely (int *,int ) ;

int
get_expr_indent()
{
    int indent;
    pos_T save_pos;
    colnr_T save_curswant;
    int save_set_curswant;
    int save_State;
    int use_sandbox = was_set_insecurely((char_u *)"indentexpr",
           OPT_LOCAL);



    save_pos = curwin->w_cursor;
    save_curswant = curwin->w_curswant;
    save_set_curswant = curwin->w_set_curswant;
    set_vim_var_nr(VV_LNUM, curwin->w_cursor.lnum);
    if (use_sandbox)
 ++sandbox;
    ++textlock;
    indent = eval_to_number(curbuf->b_p_inde);
    if (use_sandbox)
 --sandbox;
    --textlock;




    save_State = State;
    State = INSERT;
    curwin->w_cursor = save_pos;
    curwin->w_curswant = save_curswant;
    curwin->w_set_curswant = save_set_curswant;
    check_cursor();
    State = save_State;


    if (indent < 0)
 indent = get_indent();

    return indent;
}

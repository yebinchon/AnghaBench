
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int long_u ;
typedef int linenr_T ;
typedef int colnr_T ;
typedef int char_u ;
struct TYPE_5__ {scalar_t__ ml_line_count; } ;
struct TYPE_8__ {scalar_t__ b_u_line_lnum; int b_u_line_colnr; int * b_u_line_ptr; TYPE_1__ b_ml; } ;
struct TYPE_6__ {scalar_t__ lnum; int col; } ;
struct TYPE_7__ {TYPE_2__ w_cursor; } ;


 scalar_t__ FAIL ;
 int FALSE ;
 int TRUE ;
 int beep_flush () ;
 int changed_bytes (scalar_t__,int ) ;
 int check_cursor_col () ;
 TYPE_4__* curbuf ;
 TYPE_3__* curwin ;
 int do_outofmem_msg (int ) ;
 int ml_replace (scalar_t__,int *,int ) ;
 int * u_save_line (scalar_t__) ;
 scalar_t__ u_savecommon (scalar_t__,scalar_t__,int ,int ) ;
 scalar_t__ undo_off ;
 int vim_free (int *) ;

void
u_undoline()
{
    colnr_T t;
    char_u *oldp;

    if (undo_off)
 return;

    if (curbuf->b_u_line_ptr == ((void*)0)
   || curbuf->b_u_line_lnum > curbuf->b_ml.ml_line_count)
    {
 beep_flush();
 return;
    }


    if (u_savecommon(curbuf->b_u_line_lnum - 1,
         curbuf->b_u_line_lnum + 1, (linenr_T)0, FALSE) == FAIL)
 return;
    oldp = u_save_line(curbuf->b_u_line_lnum);
    if (oldp == ((void*)0))
    {
 do_outofmem_msg((long_u)0);
 return;
    }
    ml_replace(curbuf->b_u_line_lnum, curbuf->b_u_line_ptr, TRUE);
    changed_bytes(curbuf->b_u_line_lnum, 0);
    vim_free(curbuf->b_u_line_ptr);
    curbuf->b_u_line_ptr = oldp;

    t = curbuf->b_u_line_colnr;
    if (curwin->w_cursor.lnum == curbuf->b_u_line_lnum)
 curbuf->b_u_line_colnr = curwin->w_cursor.col;
    curwin->w_cursor.col = t;
    curwin->w_cursor.lnum = curbuf->b_u_line_lnum;
    check_cursor_col();
}

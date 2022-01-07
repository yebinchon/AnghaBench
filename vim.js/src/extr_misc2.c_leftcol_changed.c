
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ colnr_T ;
struct TYPE_4__ {int w_leftcol; scalar_t__ w_virtcol; void* w_set_curswant; int w_cursor; } ;


 scalar_t__ FAIL ;
 int FALSE ;
 int NOT_VALID ;
 void* TRUE ;
 int W_WIDTH (TYPE_1__*) ;
 int changed_cline_bef_curs () ;
 scalar_t__ coladvance (scalar_t__) ;
 TYPE_1__* curwin ;
 int curwin_col_off () ;
 int getvvcol (TYPE_1__*,int *,scalar_t__*,int *,scalar_t__*) ;
 long p_siso ;
 int redraw_later (int ) ;
 int validate_virtcol () ;

int
leftcol_changed()
{
    long lastcol;
    colnr_T s, e;
    int retval = FALSE;

    changed_cline_bef_curs();
    lastcol = curwin->w_leftcol + W_WIDTH(curwin) - curwin_col_off() - 1;
    validate_virtcol();





    if (curwin->w_virtcol > (colnr_T)(lastcol - p_siso))
    {
 retval = TRUE;
 coladvance((colnr_T)(lastcol - p_siso));
    }
    else if (curwin->w_virtcol < curwin->w_leftcol + p_siso)
    {
 retval = TRUE;
 (void)coladvance((colnr_T)(curwin->w_leftcol + p_siso));
    }






    getvvcol(curwin, &curwin->w_cursor, &s, ((void*)0), &e);
    if (e > (colnr_T)lastcol)
    {
 retval = TRUE;
 coladvance(s - 1);
    }
    else if (s < curwin->w_leftcol)
    {
 retval = TRUE;
 if (coladvance(e + 1) == FAIL)
 {
     curwin->w_leftcol = s;
     changed_cline_bef_curs();
 }
    }

    if (retval)
 curwin->w_set_curswant = TRUE;
    redraw_later(NOT_VALID);
    return retval;
}

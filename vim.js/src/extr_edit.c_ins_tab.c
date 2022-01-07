
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ lnum; int col; } ;
typedef TYPE_1__ pos_T ;
typedef scalar_t__ colnr_T ;
typedef char char_u ;
struct TYPE_13__ {scalar_t__ lnum; int col; } ;
struct TYPE_12__ {int w_p_list; TYPE_1__ w_cursor; } ;
struct TYPE_11__ {scalar_t__ b_p_ts; scalar_t__ b_p_sts; int b_p_et; } ;


 char ABBR_OFF ;
 int AppendToRedobuff (char*) ;
 int CPO_LISTWM ;
 scalar_t__ FAIL ;
 int FALSE ;
 TYPE_9__ Insstart ;
 scalar_t__ Insstart_blank_vcol ;
 scalar_t__ MAXCOL ;
 int NUL ;
 int REPLACE_FLAG ;
 int STRMOVE (char*,char*) ;
 int State ;
 char TAB ;
 int TRUE ;
 int VREPLACE_FLAG ;
 int backspace_until_column (int) ;
 int can_cindent ;
 int can_si ;
 int can_si_back ;
 TYPE_2__* curbuf ;
 TYPE_4__* curwin ;
 int did_ai ;
 int did_si ;
 scalar_t__ echeck_abbr (char) ;
 int get_nolist_virtcol () ;
 scalar_t__ get_sts_value () ;
 scalar_t__ get_sw_value (TYPE_2__*) ;
 int getvcol (TYPE_4__*,TYPE_1__*,scalar_t__*,int *,int *) ;
 int inindent (int ) ;
 int ins_bytes_len (char*,int) ;
 int ins_char (char) ;
 int ins_str (char*) ;
 int lbr_chartabsize (char*,scalar_t__) ;
 int ml_get_curline () ;
 char* ml_get_cursor () ;
 scalar_t__ netbeans_active () ;
 int netbeans_inserted (TYPE_2__*,scalar_t__,int,char*,int) ;
 int netbeans_removed (TYPE_2__*,scalar_t__,int,long) ;
 int p_cpo ;
 scalar_t__ p_sta ;
 int replace_join (int) ;
 int replace_push (int ) ;
 scalar_t__ stop_arrow () ;
 int vim_free (char*) ;
 scalar_t__ vim_iswhite (char) ;
 int * vim_strchr (int ,int ) ;
 char* vim_strsave (int ) ;

__attribute__((used)) static int
ins_tab()
{
    int ind;
    int i;
    int temp;

    if (Insstart_blank_vcol == MAXCOL && curwin->w_cursor.lnum == Insstart.lnum)
 Insstart_blank_vcol = get_nolist_virtcol();
    if (echeck_abbr(TAB + ABBR_OFF))
 return FALSE;

    ind = inindent(0);
    if (!curbuf->b_p_et
     && !(p_sta && ind && curbuf->b_p_ts != get_sw_value(curbuf))
     && get_sts_value() == 0)
 return TRUE;

    if (stop_arrow() == FAIL)
 return TRUE;

    did_ai = FALSE;





    AppendToRedobuff((char_u *)"\t");

    if (p_sta && ind)
 temp = (int)get_sw_value(curbuf);
    else if (curbuf->b_p_sts != 0)
 temp = (int)get_sts_value();
    else
 temp = (int)curbuf->b_p_ts;
    temp -= get_nolist_virtcol() % temp;






    ins_char(' ');
    while (--temp > 0)
    {





 {
     ins_str((char_u *)" ");
     if (State & REPLACE_FLAG)
  replace_push(NUL);
 }
    }




    if (!curbuf->b_p_et && (get_sts_value() || (p_sta && ind)))
    {
 char_u *ptr;




 pos_T fpos;
 pos_T *cursor;
 colnr_T want_vcol, vcol;
 int change_col = -1;
 int save_list = curwin->w_p_list;
 {
     ptr = ml_get_cursor();
     cursor = &curwin->w_cursor;
 }


 if (vim_strchr(p_cpo, CPO_LISTWM) == ((void*)0))
     curwin->w_p_list = FALSE;


 fpos = curwin->w_cursor;
 while (fpos.col > 0 && vim_iswhite(ptr[-1]))
 {
     --fpos.col;
     --ptr;
 }


 if ((State & REPLACE_FLAG)
  && fpos.lnum == Insstart.lnum
  && fpos.col < Insstart.col)
 {
     ptr += Insstart.col - fpos.col;
     fpos.col = Insstart.col;
 }


 getvcol(curwin, &fpos, &vcol, ((void*)0), ((void*)0));
 getvcol(curwin, cursor, &want_vcol, ((void*)0), ((void*)0));



 while (vim_iswhite(*ptr))
 {
     i = lbr_chartabsize((char_u *)"\t", vcol);
     if (vcol + i > want_vcol)
  break;
     if (*ptr != TAB)
     {
  *ptr = TAB;
  if (change_col < 0)
  {
      change_col = fpos.col;

      if (fpos.lnum == Insstart.lnum && fpos.col < Insstart.col)
   Insstart.col = fpos.col;
  }
     }
     ++fpos.col;
     ++ptr;
     vcol += i;
 }

 if (change_col >= 0)
 {
     int repl_off = 0;


     while (vcol < want_vcol && *ptr == ' ')
     {
  vcol += lbr_chartabsize(ptr, vcol);
  ++ptr;
  ++repl_off;
     }
     if (vcol > want_vcol)
     {

  --ptr;
  --repl_off;
     }
     fpos.col += repl_off;


     i = cursor->col - fpos.col;
     if (i > 0)
     {
  STRMOVE(ptr, ptr + i);

  if ((State & REPLACE_FLAG)



   )
      for (temp = i; --temp >= 0; )
   replace_join(repl_off);
     }
     cursor->col -= i;
 }





 curwin->w_p_list = save_list;
    }

    return FALSE;
}

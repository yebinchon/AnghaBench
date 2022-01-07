
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_12__ ;


struct TYPE_19__ {int col; int lnum; } ;
struct TYPE_20__ {int w_p_rl; TYPE_2__ w_cursor; void* w_p_fen; } ;
typedef TYPE_3__ win_T ;
struct cmdline_info {int cmdpos; int cmdlen; int cmdbufflen; int * cmdbuff; int * cmdprompt; } ;
typedef scalar_t__ linenr_T ;
typedef int garray_T ;
typedef int colnr_T ;
typedef scalar_t__ char_u ;
struct TYPE_18__ {int ml_line_count; } ;
struct TYPE_21__ {TYPE_1__ b_ml; scalar_t__ b_p_tw; int b_p_ma; } ;
typedef TYPE_4__ buf_T ;
struct TYPE_22__ {int * hisstr; } ;
struct TYPE_17__ {scalar_t__ tab; } ;


 char CAR ;
 int Ctrl_C ;
 int DOBUF_WIPE ;
 int ECMD_HIDE ;
 int ECMD_ONE ;
 int EMSG (int ) ;
 int EVENT_CMDWINENTER ;
 int EVENT_CMDWINLEAVE ;
 scalar_t__ FAIL ;
 void* FALSE ;
 int HIST_CMD ;
 int HIST_DEBUG ;
 int INSERT ;
 int K_IGNORE ;
 char K_NOP ;
 int K_XF1 ;
 int K_XF2 ;
 int NORMAL ;
 scalar_t__ NUL ;
 int OPT_LOCAL ;
 int RESET_BINDING (TYPE_3__*) ;
 int RedrawingDisabled ;
 int SOME_VALID ;
 scalar_t__ STRLEN (int *) ;
 int State ;
 scalar_t__ TAB ;
 int TRUE ;
 int WSP_BOT ;
 int _ (char*) ;
 scalar_t__ aborting () ;
 int add_map (scalar_t__*,int) ;
 int apply_autocmds (int ,scalar_t__*,scalar_t__*,void*,TYPE_4__*) ;
 int beep_flush () ;
 int block_autocmds () ;
 scalar_t__ buf_valid (TYPE_4__*) ;
 struct cmdline_info ccline ;
 int changed_line_abv_curs () ;
 int close_buffer (int *,TYPE_4__*,int ,void*) ;
 scalar_t__ cmdline_star ;
 TYPE_12__ cmdmod ;
 int cmdmsg_rl ;
 int cmdwin_result ;
 scalar_t__ cmdwin_type ;
 TYPE_4__* curbuf ;
 TYPE_3__* curwin ;
 int do_ecmd (int ,int *,int *,int *,int ,int ,int *) ;
 int exmode_active ;
 int ga_clear (int *) ;
 scalar_t__ get_cmdline_type () ;
 int* hisidx ;
 int hislen ;
 int hist_char2type (scalar_t__) ;
 TYPE_9__** history ;
 int init_history () ;
 int invalidate_botline () ;
 int main_loop (int ,void*) ;
 int ml_append (int ,int *,int ,void*) ;
 scalar_t__* ml_get_curline () ;
 int ml_replace (int ,int *,int ) ;
 void* need_wait_return ;
 scalar_t__ p_cwh ;
 scalar_t__ p_wc ;
 int redraw_later (int ) ;
 int redrawcmd () ;
 int restart_edit ;
 int set_cmdspos_cursor () ;
 int set_option_value (scalar_t__*,long,scalar_t__*,int ) ;
 int setfname (TYPE_4__*,scalar_t__*,int *,int ) ;
 int setmouse () ;
 int stuffReadbuff (scalar_t__*) ;
 int stuffcharReadbuff (char) ;
 int unblock_autocmds () ;
 int vim_free (int *) ;
 void* vim_strsave (scalar_t__*) ;
 int win_close (TYPE_3__*,int ) ;
 int win_goto (TYPE_3__*) ;
 int win_size_restore (int *) ;
 int win_size_save (int *) ;
 scalar_t__ win_split (int,int ) ;
 int win_valid (TYPE_3__*) ;

__attribute__((used)) static int
ex_window()
{
    struct cmdline_info save_ccline;
    buf_T *old_curbuf = curbuf;
    win_T *old_curwin = curwin;
    buf_T *bp;
    win_T *wp;
    int i;
    linenr_T lnum;
    int histtype;
    garray_T winsizes;



    int save_restart_edit = restart_edit;
    int save_State = State;
    int save_exmode = exmode_active;





    if (cmdwin_type != 0



     )
    {
 beep_flush();
 return K_IGNORE;
    }


    win_size_save(&winsizes);






    cmdmod.tab = 0;


    if (win_split((int)p_cwh, WSP_BOT) == FAIL)
    {
 beep_flush();



 return K_IGNORE;
    }
    cmdwin_type = get_cmdline_type();


    (void)do_ecmd(0, ((void*)0), ((void*)0), ((void*)0), ECMD_ONE, ECMD_HIDE, ((void*)0));
    (void)setfname(curbuf, (char_u *)"[Command Line]", ((void*)0), TRUE);
    set_option_value((char_u *)"bt", 0L, (char_u *)"nofile", OPT_LOCAL);
    set_option_value((char_u *)"swf", 0L, ((void*)0), OPT_LOCAL);
    curbuf->b_p_ma = TRUE;







    RESET_BINDING(curwin);







    need_wait_return = FALSE;

    histtype = hist_char2type(cmdwin_type);
    if (histtype == HIST_CMD || histtype == HIST_DEBUG)
    {
 if (p_wc == TAB)
 {
     add_map((char_u *)"<buffer> <Tab> <C-X><C-V>", INSERT);
     add_map((char_u *)"<buffer> <Tab> a<C-X><C-V>", NORMAL);
 }
 set_option_value((char_u *)"ft", 0L, (char_u *)"vim", OPT_LOCAL);
    }



    curbuf->b_p_tw = 0;


    init_history();
    if (hislen > 0)
    {
 i = hisidx[histtype];
 if (i >= 0)
 {
     lnum = 0;
     do
     {
  if (++i == hislen)
      i = 0;
  if (history[histtype][i].hisstr != ((void*)0))
      ml_append(lnum++, history[histtype][i].hisstr,
          (colnr_T)0, FALSE);
     }
     while (i != hisidx[histtype]);
 }
    }



    ml_replace(curbuf->b_ml.ml_line_count, ccline.cmdbuff, TRUE);
    curwin->w_cursor.lnum = curbuf->b_ml.ml_line_count;
    curwin->w_cursor.col = ccline.cmdpos;
    changed_line_abv_curs();
    invalidate_botline();
    redraw_later(SOME_VALID);


    save_ccline = ccline;
    ccline.cmdbuff = ((void*)0);
    ccline.cmdprompt = ((void*)0);


    exmode_active = 0;

    State = NORMAL;
    i = RedrawingDisabled;
    RedrawingDisabled = 0;




    cmdwin_result = 0;
    main_loop(TRUE, FALSE);

    RedrawingDisabled = i;







    ccline = save_ccline;
    cmdwin_type = 0;

    exmode_active = save_exmode;



    if (!win_valid(old_curwin) || !buf_valid(old_curbuf))
    {
 cmdwin_result = Ctrl_C;
 EMSG(_("E199: Active window or buffer deleted"));
    }
    else
    {






 vim_free(ccline.cmdbuff);
 if (cmdwin_result == K_XF1 || cmdwin_result == K_XF2)
 {
     char *p = (cmdwin_result == K_XF2) ? "qa" : "qa!";

     if (histtype == HIST_CMD)
     {

  ccline.cmdbuff = vim_strsave((char_u *)p);
  cmdwin_result = CAR;
     }
     else
     {

  ccline.cmdbuff = ((void*)0);
  stuffcharReadbuff(':');
  stuffReadbuff((char_u *)p);
  stuffcharReadbuff(CAR);
     }
 }
 else if (cmdwin_result == K_XF2)
 {
     ccline.cmdbuff = vim_strsave((char_u *)"qa");
     cmdwin_result = CAR;
 }
 else if (cmdwin_result == Ctrl_C)
 {


     ccline.cmdbuff = ((void*)0);
 }
 else
     ccline.cmdbuff = vim_strsave(ml_get_curline());
 if (ccline.cmdbuff == ((void*)0))
     cmdwin_result = Ctrl_C;
 else
 {
     ccline.cmdlen = (int)STRLEN(ccline.cmdbuff);
     ccline.cmdbufflen = ccline.cmdlen + 1;
     ccline.cmdpos = curwin->w_cursor.col;
     if (ccline.cmdpos > ccline.cmdlen)
  ccline.cmdpos = ccline.cmdlen;
     if (cmdwin_result == K_IGNORE)
     {
  set_cmdspos_cursor();
  redrawcmd();
     }
 }





 wp = curwin;
 bp = curbuf;
 win_goto(old_curwin);
 win_close(wp, TRUE);



 if (buf_valid(bp))
     close_buffer(((void*)0), bp, DOBUF_WIPE, FALSE);


 win_size_restore(&winsizes);




    }

    ga_clear(&winsizes);
    restart_edit = save_restart_edit;




    State = save_State;




    return cmdwin_result;
}

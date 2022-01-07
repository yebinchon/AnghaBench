
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char char_u ;


 int FALSE ;
 int MSG_PUTS (char*) ;
 int SHELL_COOKED ;
 int SHELL_SILENT ;
 int SIGHUP ;
 int SIGINT ;
 int SIGQUIT ;
 int SIGTERM ;
 int SIG_DFL ;
 int SIG_IGN ;
 scalar_t__ STRLEN (char*) ;
 int TMODE_COOK ;
 int TMODE_RAW ;
 int TRUE ;
 char* alloc (scalar_t__) ;
 int cur_tmode ;
 int emsg_silent ;
 int msg_outnum (long) ;
 int msg_putchar (char) ;
 int out_flush () ;
 char* p_sh ;
 char* p_shcf ;
 int set_interrupts (int ) ;
 int set_sys_cursor () ;
 int setenv (char*,char*,int) ;
 int settmode (int) ;
 int signal (int ,int ) ;
 int sprintf (char*,char*,char*,char*,char*) ;
 int system (char*) ;
 int vim_free (char*) ;

int
mch_call_shell(
    char_u *cmd,
    int options)
{
    int x;
    int tmode = cur_tmode;

    char_u *newcmd;


    out_flush();




    if (options & SHELL_COOKED)
 settmode(TMODE_COOK);
    set_interrupts(FALSE);
    if (cmd == ((void*)0))
 x = system((char *)p_sh);
    else
    {
 newcmd = alloc(STRLEN(p_sh) + STRLEN(p_shcf) + STRLEN(cmd) + 3);
 if (newcmd == ((void*)0))
     x = -1;
 else
 {
     sprintf((char *)newcmd, "%s %s %s", p_sh, p_shcf, cmd);
     x = system((char *)newcmd);
     vim_free(newcmd);
 }

    }






    if (tmode == TMODE_RAW)
 settmode(TMODE_RAW);
    set_interrupts(TRUE);

    if (x && !(options & SHELL_SILENT) && !emsg_silent)
    {
 MSG_PUTS("\nshell returned ");
 msg_outnum((long)x);
 msg_putchar('\n');
    }

    return x;
}

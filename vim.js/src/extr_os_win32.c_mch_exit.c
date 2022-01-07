
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int SetConsoleCursorInfo (int ,int *) ;
 int SetConsoleIcon (int ,int ,int ) ;
 int SetConsoleMode (int ,int ) ;
 int TMODE_COOK ;
 int TRUE ;
 int ctime (int *) ;
 int dyn_libintl_end () ;
 int exit (int) ;
 int fclose (int *) ;
 int * fdDump ;
 int fputs (int ,int *) ;
 int g_cci ;
 int g_cmodein ;
 int g_cmodeout ;
 scalar_t__ g_fCanChangeIcon ;
 int g_fForceExit ;
 scalar_t__ g_fWindInitCalled ;
 int g_hConIn ;
 int g_hConOut ;
 int g_hOrigIcon ;
 int g_hOrigIconSmall ;
 int g_hWnd ;
 int mch_restore_title (int) ;
 int ml_close_all (int ) ;
 int settmode (int ) ;
 int stoptermcap () ;
 int time (int *) ;

void
mch_exit(int r)
{
    stoptermcap();

    if (g_fWindInitCalled)
 settmode(TMODE_COOK);

    ml_close_all(TRUE);

    if (g_fWindInitCalled)
    {
    }

    SetConsoleCursorInfo(g_hConOut, &g_cci);
    SetConsoleMode(g_hConIn, g_cmodein);
    SetConsoleMode(g_hConOut, g_cmodeout);





    exit(r);
}

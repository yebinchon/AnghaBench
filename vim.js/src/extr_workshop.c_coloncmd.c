
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;
typedef scalar_t__ Boolean ;


 int ALT_INPUT_LOCK_OFF ;
 int ALT_INPUT_LOCK_ON ;
 scalar_t__ WSDLEVEL (int ) ;
 int WS_TRACE_COLONCMD ;
 int do_cmdline_cmd (int *) ;
 int * empty_option ;
 int gui_update_screen () ;
 int * p_cpo ;
 int wsdebug (char*,char*) ;

__attribute__((used)) static void
coloncmd(
 char *cmd,
 Boolean force)
{
    char_u *cpo_save = p_cpo;






    p_cpo = empty_option;

    ALT_INPUT_LOCK_ON;
    do_cmdline_cmd((char_u *)cmd);
    ALT_INPUT_LOCK_OFF;

    p_cpo = cpo_save;

    if (force)
 gui_update_screen();
}

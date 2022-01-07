
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EMSG (int ) ;
 int MSG_PUTS (int ) ;
 scalar_t__ NUL ;
 int _ (char*) ;
 int do_shell (int *,int ) ;
 char* e_shellempty ;
 scalar_t__* p_sh ;

void
suspend_shell()
{
    if (*p_sh == NUL)
 EMSG(_(e_shellempty));
    else
    {
 MSG_PUTS(_("new shell started\n"));
 do_shell(((void*)0), 0);
    }
}

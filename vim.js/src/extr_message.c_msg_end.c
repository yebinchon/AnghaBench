
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMDLINE ;
 int FALSE ;
 int State ;
 int TRUE ;
 int exiting ;
 scalar_t__ need_wait_return ;
 int out_flush () ;
 int wait_return (int) ;

int
msg_end()
{






    if (!exiting && need_wait_return && !(State & CMDLINE))
    {
 wait_return(FALSE);
 return FALSE;
    }
    out_flush();
    return TRUE;
}

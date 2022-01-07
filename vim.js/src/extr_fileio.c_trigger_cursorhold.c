
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tb_len; } ;


 int FALSE ;
 int INSERT ;
 int NORMAL_BUSY ;
 int Recording ;
 int TRUE ;
 int did_cursorhold ;
 int get_real_state () ;
 scalar_t__ has_cursorhold () ;
 int ins_compl_active () ;
 TYPE_1__ typebuf ;

int
trigger_cursorhold()
{
    int state;

    if (!did_cursorhold
     && has_cursorhold()
     && !Recording
     && typebuf.tb_len == 0



     )
    {
 state = get_real_state();
 if (state == NORMAL_BUSY || (state & INSERT) != 0)
     return TRUE;
    }
    return FALSE;
}

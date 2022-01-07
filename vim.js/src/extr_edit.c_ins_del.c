
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int col; } ;
struct TYPE_4__ {TYPE_1__ w_cursor; } ;


 int AppendCharToRedobuff (int ) ;
 int BS_EOL ;
 scalar_t__ FAIL ;
 void* FALSE ;
 int K_DEL ;
 scalar_t__ NUL ;
 int TRUE ;
 int can_bs (int ) ;
 void* can_si ;
 void* can_si_back ;
 TYPE_2__* curwin ;
 scalar_t__ del_char (void*) ;
 void* did_ai ;
 void* did_si ;
 scalar_t__ do_join (int,void*,int ,void*) ;
 scalar_t__ gchar_cursor () ;
 scalar_t__ stop_arrow () ;
 int vim_beep () ;

__attribute__((used)) static void
ins_del()
{
    int temp;

    if (stop_arrow() == FAIL)
 return;
    if (gchar_cursor() == NUL)
    {
 temp = curwin->w_cursor.col;
 if (!can_bs(BS_EOL)
  || do_join(2, FALSE, TRUE, FALSE) == FAIL)
     vim_beep();
 else
     curwin->w_cursor.col = temp;
    }
    else if (del_char(FALSE) == FAIL)
 vim_beep();
    did_ai = FALSE;





    AppendCharToRedobuff(K_DEL);
}

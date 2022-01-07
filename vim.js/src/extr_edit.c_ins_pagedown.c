
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int pos_T ;
struct TYPE_4__ {int w_cursor; } ;
struct TYPE_3__ {int * tp_next; } ;


 int FORWARD ;
 int MOD_MASK_CTRL ;
 scalar_t__ OK ;
 int TRUE ;
 int can_cindent ;
 TYPE_2__* curwin ;
 TYPE_1__* first_tabpage ;
 int goto_tabpage (int ) ;
 int mod_mask ;
 scalar_t__ onepage (int ,long) ;
 int start_arrow (int *) ;
 int undisplay_dollar () ;
 int vim_beep () ;

__attribute__((used)) static void
ins_pagedown()
{
    pos_T tpos;

    undisplay_dollar();
    tpos = curwin->w_cursor;
    if (onepage(FORWARD, 1L) == OK)
    {
 start_arrow(&tpos);



    }
    else
 vim_beep();
}

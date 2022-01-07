
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ colnr_T ;
typedef int char_u ;
struct TYPE_4__ {int ml_line_count; } ;
struct TYPE_6__ {TYPE_1__ b_ml; } ;
struct TYPE_5__ {int w_cursor; } ;


 int AppendToRedobuff (int *) ;
 int FAIL ;
 void* FALSE ;
 int Insstart ;
 scalar_t__ Insstart_textlen ;
 scalar_t__ OK ;
 int ResetRedobuff () ;
 int State ;
 int VREPLACE_FLAG ;
 scalar_t__ ai_col ;
 void* arrow_used ;
 TYPE_3__* curbuf ;
 TYPE_2__* curwin ;
 int foldOpenCursor () ;
 void* ins_need_undo ;
 scalar_t__ linetabsize (int ) ;
 int ml_get_curline () ;
 int new_insert_skip ;
 int orig_line_count ;
 scalar_t__ u_save_cursor () ;
 int vr_lines_changed ;

int
stop_arrow()
{
    if (arrow_used)
    {
 if (u_save_cursor() == OK)
 {
     arrow_used = FALSE;
     ins_need_undo = FALSE;
 }
 Insstart = curwin->w_cursor;
 Insstart_textlen = (colnr_T)linetabsize(ml_get_curline());
 ai_col = 0;







 ResetRedobuff();
 AppendToRedobuff((char_u *)"1i");
 new_insert_skip = 2;
    }
    else if (ins_need_undo)
    {
 if (u_save_cursor() == OK)
     ins_need_undo = FALSE;
    }






    return (arrow_used || ins_need_undo ? FAIL : OK);
}

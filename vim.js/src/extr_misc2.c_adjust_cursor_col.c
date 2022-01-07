
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ col; } ;
struct TYPE_4__ {TYPE_1__ w_cursor; } ;


 scalar_t__ NUL ;
 int VIsual_active ;
 TYPE_2__* curwin ;
 scalar_t__ gchar_cursor () ;
 char* p_sel ;

void
adjust_cursor_col()
{
    if (curwin->w_cursor.col > 0



     && gchar_cursor() == NUL)
 --curwin->w_cursor.col;
}

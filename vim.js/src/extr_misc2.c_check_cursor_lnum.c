
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ml_line_count; } ;
struct TYPE_8__ {TYPE_2__ b_ml; } ;
struct TYPE_5__ {int lnum; } ;
struct TYPE_7__ {TYPE_1__ w_cursor; } ;


 TYPE_4__* curbuf ;
 TYPE_3__* curwin ;
 int hasFolding (int,int*,int *) ;

void
check_cursor_lnum()
{
    if (curwin->w_cursor.lnum > curbuf->b_ml.ml_line_count)
    {






     curwin->w_cursor.lnum = curbuf->b_ml.ml_line_count;
    }
    if (curwin->w_cursor.lnum <= 0)
 curwin->w_cursor.lnum = 1;
}

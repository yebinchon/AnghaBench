
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* bottom; void* right; void* top; void* left; } ;
typedef TYPE_1__ RECT ;


 int Columns ;
 void* FILL_X (int) ;
 void* FILL_Y (int) ;
 int clear_rect (TYPE_1__*) ;

void
gui_mch_clear_block(
    int row1,
    int col1,
    int row2,
    int col2)
{
    RECT rc;






    rc.left = FILL_X(col1);
    rc.top = FILL_Y(row1);
    rc.right = FILL_X(col2 + 1) + (col2 == Columns - 1);
    rc.bottom = FILL_Y(row2 + 1);
    clear_rect(&rc);
}

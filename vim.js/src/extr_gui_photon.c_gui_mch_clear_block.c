
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int back_pixel; } ;
struct TYPE_7__ {int member_1; int member_0; } ;
struct TYPE_6__ {int member_1; int member_0; } ;
struct TYPE_8__ {TYPE_2__ member_1; TYPE_1__ member_0; } ;
typedef TYPE_3__ PhRect_t ;


 int DRAW_END ;
 int DRAW_START ;
 int FILL_X (int) ;
 int FILL_Y (int) ;
 int PgDrawRect (TYPE_3__*,int ) ;
 int Pg_DRAW_FILL ;
 TYPE_4__ gui ;
 int gui_mch_set_bg_color (int ) ;

void
gui_mch_clear_block(int row1, int col1, int row2, int col2)
{
    PhRect_t block = {
 { FILL_X(col1), FILL_Y(row1) },
 { FILL_X(col2 + 1) - 1, FILL_Y(row2 + 1) - 1}
    };

    DRAW_START;
    gui_mch_set_bg_color(gui.back_pixel);
    PgDrawRect(&block, Pg_DRAW_FILL);
    DRAW_END;
}

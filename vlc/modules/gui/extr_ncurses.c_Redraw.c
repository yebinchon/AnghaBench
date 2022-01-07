
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ intf_thread_t ;
struct TYPE_7__ {int box_type; int box_height; int box_y; int box_lines_total; int box_start; int color; } ;
typedef TYPE_2__ intf_sys_t ;


 int BOX_NONE ;
 scalar_t__ COLS ;
 int DrawBox (int ,int,int ,int ) ;
 int DrawEmptyLine (int ,int,scalar_t__) ;
 int DrawStatus (TYPE_1__*) ;
 int FillBox (TYPE_1__*) ;
 int LINES ;
 int _ (int ) ;
 scalar_t__ __MIN (int,int) ;
 int * box_title ;
 int refresh () ;

__attribute__((used)) static void Redraw(intf_thread_t *intf)
{
    intf_sys_t *sys = intf->p_sys;
    int box = sys->box_type;
    int y = DrawStatus(intf);

    sys->box_height = LINES - y - 2;
    DrawBox(y++, sys->box_height, sys->color, _(box_title[box]));

    sys->box_y = y;

    if (box != BOX_NONE) {
        FillBox(intf);

        if (sys->box_lines_total == 0)
            sys->box_start = 0;
        else if (sys->box_start > sys->box_lines_total - 1)
            sys->box_start = sys->box_lines_total - 1;
        y += __MIN(sys->box_lines_total - sys->box_start,
                   sys->box_height);
    }

    while (y < LINES - 1)
        DrawEmptyLine(y++, 1, COLS - 2);

    refresh();
}

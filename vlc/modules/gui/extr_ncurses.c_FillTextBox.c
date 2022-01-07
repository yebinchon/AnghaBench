
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ box_type; int search_chain; int open_chain; } ;
typedef TYPE_1__ intf_sys_t ;


 scalar_t__ BOX_OPEN ;
 int COLS ;
 int DrawEmptyLine (int,int,int) ;
 int _ (char*) ;
 int mvnprintw (int,int,int,int ,int ) ;

__attribute__((used)) static void FillTextBox(intf_sys_t *sys)
{
    int width = COLS - 2;

    DrawEmptyLine(7, 1, width);
    if (sys->box_type == BOX_OPEN)
        mvnprintw(7, 1, width, _("Open: %s"), sys->open_chain);
    else
        mvnprintw(7, 1, width, _("Find: %s"), sys->search_chain);
}

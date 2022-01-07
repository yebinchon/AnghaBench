
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ parent; } ;
struct TYPE_6__ {TYPE_1__ widget; } ;
typedef TYPE_2__ scrollbar ;
typedef int listview ;


 int listview_set_selected (int *,int ) ;
 int scrollbar_scroll_get_line (TYPE_2__*,int) ;

__attribute__((used)) static void scrollbar_scroll ( scrollbar *sb, int y )
{
    listview_set_selected ( (listview *) sb->widget.parent, scrollbar_scroll_get_line ( sb, y ) );
}

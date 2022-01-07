
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
typedef TYPE_1__ scrollbar_T ;


 int PtRealizeWidget (int ) ;
 int PtUnrealizeWidget (int ) ;

void
gui_mch_enable_scrollbar(scrollbar_T *sb, int flag)
{
    if (flag != 0)
 PtRealizeWidget(sb->id);
    else
 PtUnrealizeWidget(sb->id);
}

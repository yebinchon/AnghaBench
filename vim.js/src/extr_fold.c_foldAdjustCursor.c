
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lnum; } ;
struct TYPE_4__ {TYPE_1__ w_cursor; } ;


 TYPE_2__* curwin ;
 int hasFolding (int ,int *,int *) ;

void
foldAdjustCursor()
{
    (void)hasFolding(curwin->w_cursor.lnum, &curwin->w_cursor.lnum, ((void*)0));
}

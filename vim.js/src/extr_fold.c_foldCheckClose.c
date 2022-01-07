
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lnum; } ;
struct TYPE_5__ {scalar_t__ w_p_fdl; TYPE_1__ w_cursor; int w_folds; } ;


 scalar_t__ NUL ;
 int changed_window_setting () ;
 scalar_t__ checkCloseRec (int *,int ,int) ;
 int checkupdate (TYPE_2__*) ;
 TYPE_2__* curwin ;
 scalar_t__* p_fcl ;

void
foldCheckClose()
{
    if (*p_fcl != NUL)
    {
 checkupdate(curwin);
 if (checkCloseRec(&curwin->w_folds, curwin->w_cursor.lnum,
       (int)curwin->w_p_fdl))
     changed_window_setting();
    }
}

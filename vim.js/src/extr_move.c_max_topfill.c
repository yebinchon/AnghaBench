
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int w_height; int w_topfill; int w_topline; } ;


 TYPE_1__* curwin ;
 int diff_check_fill (TYPE_1__*,int ) ;
 int plines_nofill (int ) ;

__attribute__((used)) static void
max_topfill()
{
    int n;

    n = plines_nofill(curwin->w_topline);
    if (n >= curwin->w_height)
 curwin->w_topfill = 0;
    else
    {
 curwin->w_topfill = diff_check_fill(curwin, curwin->w_topline);
 if (curwin->w_topfill + n > curwin->w_height)
     curwin->w_topfill = curwin->w_height - n;
    }
}

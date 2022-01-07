
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lnum; } ;
struct TYPE_4__ {TYPE_1__ w_cursor; } ;


 int FALSE ;
 TYPE_2__* curwin ;
 int dollar_vcol ;
 int redrawWinline (int ,int ) ;

__attribute__((used)) static void
undisplay_dollar()
{
    if (dollar_vcol >= 0)
    {
 dollar_vcol = -1;
 redrawWinline(curwin->w_cursor.lnum, FALSE);
    }
}

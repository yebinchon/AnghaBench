
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int linenr_T ;
struct TYPE_3__ {int lnum; } ;
struct TYPE_4__ {TYPE_1__ w_cursor; } ;


 TYPE_2__* curwin ;
 int u_save (int ,int ) ;

int
u_save_cursor()
{
    return (u_save((linenr_T)(curwin->w_cursor.lnum - 1),
          (linenr_T)(curwin->w_cursor.lnum + 1)));
}

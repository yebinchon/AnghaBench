
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int char_u ;
struct TYPE_3__ {int lnum; } ;
struct TYPE_4__ {TYPE_1__ w_cursor; } ;


 int FALSE ;
 int curbuf ;
 TYPE_2__* curwin ;
 int * ml_get_buf (int ,int ,int ) ;

char_u *
ml_get_curline()
{
    return ml_get_buf(curbuf, curwin->w_cursor.lnum, FALSE);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ col; } ;
typedef TYPE_1__ pos_T ;
struct TYPE_6__ {TYPE_1__ w_cursor; } ;


 int BACKWARD ;
 int TRUE ;
 TYPE_3__* curwin ;
 int spell_bad_len ;
 int spell_move_to (TYPE_3__*,int ,int ,int ,int *) ;
 int start_arrow (TYPE_1__*) ;

__attribute__((used)) static void
spell_back_to_badword()
{
    pos_T tpos = curwin->w_cursor;

    spell_bad_len = spell_move_to(curwin, BACKWARD, TRUE, TRUE, ((void*)0));
    if (curwin->w_cursor.col != tpos.col)
 start_arrow(&tpos);
}

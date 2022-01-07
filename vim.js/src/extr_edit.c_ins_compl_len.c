
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ col; } ;
struct TYPE_4__ {TYPE_1__ w_cursor; } ;


 scalar_t__ compl_col ;
 TYPE_2__* curwin ;

__attribute__((used)) static int
ins_compl_len()
{
    int off = (int)curwin->w_cursor.col - (int)compl_col;

    if (off < 0)
 return 0;
    return off;
}

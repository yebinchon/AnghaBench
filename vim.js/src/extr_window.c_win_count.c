
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* w_next; } ;
typedef TYPE_1__ win_T ;


 TYPE_1__* firstwin ;

int
win_count()
{
    win_T *wp;
    int count = 0;

    for (wp = firstwin; wp != ((void*)0); wp = wp->w_next)
 ++count;
    return count;
}

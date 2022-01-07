
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ colnr_T ;
struct TYPE_3__ {int w_cursor; } ;


 TYPE_1__* curwin ;
 int getvvcol (TYPE_1__*,int *,scalar_t__*,int *,int *) ;

int
getviscol()
{
    colnr_T x;

    getvvcol(curwin, &curwin->w_cursor, &x, ((void*)0), ((void*)0));
    return (int)x;
}

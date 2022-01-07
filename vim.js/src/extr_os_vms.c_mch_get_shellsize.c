
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int length; } ;
struct TYPE_6__ {TYPE_1__ y; } ;
struct TYPE_7__ {TYPE_2__ x; int width; } ;
typedef TYPE_3__ TT_MODE ;


 int Columns ;
 int OK ;
 int Rows ;
 TYPE_3__ get_tty () ;

int
mch_get_shellsize(void)
{
    TT_MODE tmode;

    tmode = get_tty();
    Columns = tmode.width;
    Rows = tmode.x.y.length;
    return OK;
}

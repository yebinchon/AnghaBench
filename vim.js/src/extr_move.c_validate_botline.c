
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int w_valid; } ;


 int VALID_BOTLINE ;
 int comp_botline (TYPE_1__*) ;
 TYPE_1__* curwin ;

void
validate_botline()
{
    if (!(curwin->w_valid & VALID_BOTLINE))
 comp_botline(curwin);
}

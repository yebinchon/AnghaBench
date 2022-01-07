
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int b_p_iminsert; } ;


 TYPE_1__* curbuf ;
 int p_iminsert ;

void
set_iminsert_global()
{
    p_iminsert = curbuf->b_p_iminsert;
}

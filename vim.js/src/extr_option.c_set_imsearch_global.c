
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int b_p_imsearch; } ;


 TYPE_1__* curbuf ;
 int p_imsearch ;

void
set_imsearch_global()
{
    p_imsearch = curbuf->b_p_imsearch;
}

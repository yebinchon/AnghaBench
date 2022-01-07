
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ b_u_line_lnum; int * b_u_line_ptr; } ;


 TYPE_1__* curbuf ;
 int vim_free (int *) ;

void
u_clearline()
{
    if (curbuf->b_u_line_ptr != ((void*)0))
    {
 vim_free(curbuf->b_u_line_ptr);
 curbuf->b_u_line_ptr = ((void*)0);
 curbuf->b_u_line_lnum = 0;
    }
}

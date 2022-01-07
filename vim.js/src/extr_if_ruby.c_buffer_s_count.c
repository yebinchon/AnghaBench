
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ b_p_bl; struct TYPE_3__* b_next; } ;
typedef TYPE_1__ buf_T ;
typedef int VALUE ;


 int INT2NUM (int) ;
 TYPE_1__* firstbuf ;

__attribute__((used)) static VALUE buffer_s_count()
{
    buf_T *b;
    int n = 0;

    for (b = firstbuf; b != ((void*)0); b = b->b_next)
    {


 if (b->b_p_bl)
     n++;
    }

    return INT2NUM(n);
}

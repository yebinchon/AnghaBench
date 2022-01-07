
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* b_next; } ;
typedef TYPE_1__ buf_T ;


 int TRUE ;
 int bufIsChanged (TYPE_1__*) ;
 TYPE_1__* firstbuf ;
 int ml_close (TYPE_1__*,int ) ;

void
ml_close_notmod()
{
    buf_T *buf;

    for (buf = firstbuf; buf != ((void*)0); buf = buf->b_next)
 if (!bufIsChanged(buf))
     ml_close(buf, TRUE);
}

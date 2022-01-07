
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* p_next; } ;
typedef TYPE_1__ sout_stream_t ;


 int sout_StreamDelete (TYPE_1__*) ;

void sout_StreamChainDelete(sout_stream_t *p_first, sout_stream_t *p_last)
{
    while(p_first != ((void*)0))
    {
        sout_stream_t *p_next = p_first->p_next;

        sout_StreamDelete(p_first);
        if(p_first == p_last)
           break;
        p_first = p_next;
    }
}

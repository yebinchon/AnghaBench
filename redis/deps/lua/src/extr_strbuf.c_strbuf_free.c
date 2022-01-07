
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dynamic; struct TYPE_5__* buf; } ;
typedef TYPE_1__ strbuf_t ;


 int debug_stats (TYPE_1__*) ;
 int free (TYPE_1__*) ;

void strbuf_free(strbuf_t *s)
{
    debug_stats(s);

    if (s->buf) {
        free(s->buf);
        s->buf = ((void*)0);
    }
    if (s->dynamic)
        free(s);
}

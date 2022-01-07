
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int length; int reallocs; scalar_t__ debug; } ;
typedef TYPE_1__ strbuf_t ;


 int fprintf (int ,char*,long,int ,int ,int ) ;
 int stderr ;

__attribute__((used)) static inline void debug_stats(strbuf_t *s)
{
    if (s->debug) {
        fprintf(stderr, "strbuf(%lx) reallocs: %d, length: %d, size: %d\n",
                (long)s, s->reallocs, s->length, s->size);
    }
}

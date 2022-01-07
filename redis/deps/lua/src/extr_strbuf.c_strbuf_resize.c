
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int debug; int size; int reallocs; int buf; } ;
typedef TYPE_1__ strbuf_t ;


 int calculate_new_size (TYPE_1__*,int) ;
 int die (char*) ;
 int fprintf (int ,char*,long,int,int) ;
 int realloc (int ,int) ;
 int stderr ;

void strbuf_resize(strbuf_t *s, int len)
{
    int newsize;

    newsize = calculate_new_size(s, len);

    if (s->debug > 1) {
        fprintf(stderr, "strbuf(%lx) resize: %d => %d\n",
                (long)s, s->size, newsize);
    }

    s->size = newsize;
    s->buf = realloc(s->buf, s->size);
    if (!s->buf)
        die("Out of memory");
    s->reallocs++;
}

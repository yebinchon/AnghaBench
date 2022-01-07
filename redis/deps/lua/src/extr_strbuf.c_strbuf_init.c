
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; int * buf; scalar_t__ debug; scalar_t__ reallocs; scalar_t__ dynamic; int increment; scalar_t__ length; } ;
typedef TYPE_1__ strbuf_t ;


 int STRBUF_DEFAULT_INCREMENT ;
 int STRBUF_DEFAULT_SIZE ;
 int die (char*) ;
 int * malloc (int) ;
 int strbuf_ensure_null (TYPE_1__*) ;

void strbuf_init(strbuf_t *s, int len)
{
    int size;

    if (len <= 0)
        size = STRBUF_DEFAULT_SIZE;
    else
        size = len + 1;

    s->buf = ((void*)0);
    s->size = size;
    s->length = 0;
    s->increment = STRBUF_DEFAULT_INCREMENT;
    s->dynamic = 0;
    s->reallocs = 0;
    s->debug = 0;

    s->buf = malloc(size);
    if (!s->buf)
        die("Out of memory");

    strbuf_ensure_null(s);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int size; int ** buf; } ;
typedef TYPE_1__ elem_vector_t ;
typedef int HTMLElement ;


 int ** heap_realloc (int **,int) ;

__attribute__((used)) static void elem_vector_add(elem_vector_t *buf, HTMLElement *elem)
{
    if(buf->len == buf->size) {
        buf->size <<= 1;
        buf->buf = heap_realloc(buf->buf, buf->size*sizeof(HTMLElement*));
    }

    buf->buf[buf->len++] = elem;
}

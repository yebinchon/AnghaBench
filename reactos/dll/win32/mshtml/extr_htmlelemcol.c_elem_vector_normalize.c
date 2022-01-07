
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int size; int * buf; } ;
typedef TYPE_1__ elem_vector_t ;
typedef int HTMLElement ;


 int heap_free (int *) ;
 int * heap_realloc (int *,int) ;

__attribute__((used)) static void elem_vector_normalize(elem_vector_t *buf)
{
    if(!buf->len) {
        heap_free(buf->buf);
        buf->buf = ((void*)0);
    }else if(buf->size > buf->len) {
        buf->buf = heap_realloc(buf->buf, buf->len*sizeof(HTMLElement*));
    }

    buf->size = buf->len;
}

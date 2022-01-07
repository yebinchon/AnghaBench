
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct JitterBuffer {struct JitterBuffer* queue; } ;


 int free (struct JitterBuffer*) ;
 int jbuf_clear (struct JitterBuffer*) ;

__attribute__((used)) static void jbuf_free(struct JitterBuffer *q)
{
    if (!q) return;

    jbuf_clear(q);
    free(q->queue);
    free(q);
}

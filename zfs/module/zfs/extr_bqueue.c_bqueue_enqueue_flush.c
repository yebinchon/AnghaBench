
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int bqueue_t ;


 int B_TRUE ;
 int bqueue_enqueue_impl (int *,void*,int ,int ) ;

void
bqueue_enqueue_flush(bqueue_t *q, void *data, uint64_t item_size)
{
 bqueue_enqueue_impl(q, data, item_size, B_TRUE);
}

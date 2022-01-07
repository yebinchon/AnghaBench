
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct int_queue {int dummy; } ;


 int assert (int) ;
 int cbuf_init (struct int_queue*) ;
 int cbuf_is_empty (struct int_queue*) ;
 int cbuf_push (struct int_queue*,int) ;
 int cbuf_take (struct int_queue*,int*) ;

__attribute__((used)) static void test_cbuf_empty(void) {
    struct int_queue queue;
    cbuf_init(&queue);

    assert(cbuf_is_empty(&queue));

    bool push_ok = cbuf_push(&queue, 42);
    assert(push_ok);
    assert(!cbuf_is_empty(&queue));

    int item;
    bool take_ok = cbuf_take(&queue, &item);
    assert(take_ok);
    assert(cbuf_is_empty(&queue));

    bool take_empty_ok = cbuf_take(&queue, &item);
    assert(!take_empty_ok);
}

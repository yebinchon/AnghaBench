
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct int_queue {int dummy; } ;


 int assert (int) ;
 int cbuf_init (struct int_queue*) ;
 int cbuf_push (struct int_queue*,int) ;
 int cbuf_take (struct int_queue*,int*) ;

__attribute__((used)) static void test_cbuf_push_take(void) {
    struct int_queue queue;
    cbuf_init(&queue);

    bool push1_ok = cbuf_push(&queue, 42);
    assert(push1_ok);

    bool push2_ok = cbuf_push(&queue, 35);
    assert(push2_ok);

    int item;

    bool take1_ok = cbuf_take(&queue, &item);
    assert(take1_ok);
    assert(item == 42);

    bool take2_ok = cbuf_take(&queue, &item);
    assert(take2_ok);
    assert(item == 35);
}

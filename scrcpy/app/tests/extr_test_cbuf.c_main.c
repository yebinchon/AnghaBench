
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_cbuf_empty () ;
 int test_cbuf_full () ;
 int test_cbuf_push_take () ;

int main(void) {
    test_cbuf_empty();
    test_cbuf_full();
    test_cbuf_push_take();
    return 0;
}

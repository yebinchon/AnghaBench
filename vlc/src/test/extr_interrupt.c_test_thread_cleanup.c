
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_interrupt_t ;


 int test_context_simple (int *) ;
 int vlc_interrupt_set (int *) ;

__attribute__((used)) static void *test_thread_cleanup(void *data)
{
    vlc_interrupt_t *ctx = data;

    test_context_simple(ctx);

    vlc_interrupt_set(ctx);
    return ((void*)0);
}

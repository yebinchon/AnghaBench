
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_interrupt_t ;


 int pause () ;
 int test_context_simple (int *) ;
 int vlc_assert_unreachable () ;
 int vlc_interrupt_set (int *) ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;

__attribute__((used)) static void *test_thread_cancel(void *data)
{
    vlc_interrupt_t *ctx = data;

    int canc = vlc_savecancel();
    test_context_simple(ctx);
    vlc_restorecancel(canc);


    vlc_interrupt_set(ctx);
    for (;;)
        pause();

    vlc_assert_unreachable();
}

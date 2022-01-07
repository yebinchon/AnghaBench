
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int g_main_context_iteration (int *,int ) ;
 scalar_t__ g_main_context_pending (int *) ;
 int vim_is_input_buf_full () ;

void
gui_mch_update(void)
{
    while (g_main_context_pending(((void*)0)) && !vim_is_input_buf_full())
 g_main_context_iteration(((void*)0), TRUE);
}

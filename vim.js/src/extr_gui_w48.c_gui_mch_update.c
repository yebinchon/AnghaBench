
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MSG ;


 int PM_NOREMOVE ;
 scalar_t__ pPeekMessage (int *,int *,int ,int ,int ) ;
 int process_message () ;
 int s_busy_processing ;
 int vim_is_input_buf_full () ;

void
gui_mch_update(void)
{
    MSG msg;

    if (!s_busy_processing)
 while (pPeekMessage(&msg, ((void*)0), 0, 0, PM_NOREMOVE)
        && !vim_is_input_buf_full())
     process_message();
}

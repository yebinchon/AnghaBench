
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PtAppAddWorkProc (int *,int ,int*) ;
 int PtProcessEvent () ;
 int TRUE ;
 int exit_gui_mch_update ;
 int vim_is_input_buf_full () ;

void
gui_mch_update(void)
{
    int working = TRUE;

    PtAppAddWorkProc(((void*)0), exit_gui_mch_update, &working);
    while ((working == TRUE) && !vim_is_input_buf_full())
    {
 PtProcessEvent();
    }
}

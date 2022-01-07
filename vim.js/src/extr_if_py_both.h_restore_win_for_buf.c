
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int win_T ;
typedef int tabpage_T ;
typedef int buf_T ;


 int TRUE ;
 int restore_buffer (int *) ;
 int restore_win (int *,int *,int ) ;

__attribute__((used)) static void
restore_win_for_buf(
    win_T *save_curwin,
    tabpage_T *save_curtab,
    buf_T *save_curbuf)
{
    if (save_curbuf == ((void*)0))
 restore_win(save_curwin, save_curtab, TRUE);
    else
 restore_buffer(save_curbuf);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int win_T ;
typedef int tabpage_T ;
typedef int char_u ;
typedef int buf_T ;


 int FAIL ;
 int FALSE ;
 int N_ (char*) ;
 int PyErr_SET_VIM (int ) ;



 int TRUE ;
 int VimTryEnd () ;
 int VimTryStart () ;
 int restore_buffer (int *) ;
 int restore_win (int *,int *,int ) ;
 int set_option_value_err (int *,int,int *,int) ;
 int switch_buffer (int **,int *) ;
 int switch_win (int **,int **,int *,int ,int ) ;
 int win_find_tabpage (int *) ;

__attribute__((used)) static int
set_option_value_for(
 char_u *key,
 int numval,
 char_u *stringval,
 int opt_flags,
 int opt_type,
 void *from)
{
    win_T *save_curwin = ((void*)0);
    tabpage_T *save_curtab = ((void*)0);
    buf_T *save_curbuf = ((void*)0);
    int set_ret = 0;

    VimTryStart();
    switch (opt_type)
    {
 case 128:
     if (switch_win(&save_curwin, &save_curtab, (win_T *)from,
         win_find_tabpage((win_T *)from), FALSE) == FAIL)
     {
  if (VimTryEnd())
      return -1;
  PyErr_SET_VIM(N_("problem while switching windows"));
  return -1;
     }
     set_ret = set_option_value_err(key, numval, stringval, opt_flags);
     restore_win(save_curwin, save_curtab, TRUE);
     break;
 case 130:
     switch_buffer(&save_curbuf, (buf_T *)from);
     set_ret = set_option_value_err(key, numval, stringval, opt_flags);
     restore_buffer(save_curbuf);
     break;
 case 129:
     set_ret = set_option_value_err(key, numval, stringval, opt_flags);
     break;
    }
    if (set_ret == FAIL)
 return -1;
    return VimTryEnd();
}

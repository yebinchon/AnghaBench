
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int FAIL ;
 int OK ;
 int PyErr_SetVim (char*) ;
 scalar_t__ VimTryEnd () ;
 int * set_option_value (int *,int,int *,int) ;

__attribute__((used)) static int
set_option_value_err(char_u *key, int numval, char_u *stringval, int opt_flags)
{
    char_u *errmsg;

    if ((errmsg = set_option_value(key, numval, stringval, opt_flags)))
    {
 if (VimTryEnd())
     return FAIL;
 PyErr_SetVim((char *)errmsg);
 return FAIL;
    }
    return OK;
}

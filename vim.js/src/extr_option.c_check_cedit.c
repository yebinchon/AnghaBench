
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 scalar_t__ NUL ;
 int cedit_key ;
 int * e_invarg ;
 scalar_t__* p_cedit ;
 int string_to_key (scalar_t__*) ;
 scalar_t__ vim_isprintc (int) ;

__attribute__((used)) static char_u *
check_cedit()
{
    int n;

    if (*p_cedit == NUL)
 cedit_key = -1;
    else
    {
 n = string_to_key(p_cedit);
 if (vim_isprintc(n))
     return e_invarg;
 cedit_key = n;
    }
    return ((void*)0);
}

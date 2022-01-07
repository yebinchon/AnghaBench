
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char char_u ;


 int FALSE ;
 char NUL ;
 int TRUE ;
 int mb_ptr_adv (char*) ;
 int * vim_strchr (char*,char) ;

int
mch_has_exp_wildcard(char_u *p)
{
    for ( ; *p; mb_ptr_adv(p))
    {
 if (vim_strchr((char_u *)"?*[", *p) != ((void*)0)
  || (*p == '~' && p[1] != NUL))
     return TRUE;
    }
    return FALSE;
}

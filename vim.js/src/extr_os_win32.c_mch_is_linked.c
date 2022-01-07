
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int FALSE ;
 int TRUE ;
 scalar_t__ mch_is_hard_link (int *) ;
 scalar_t__ mch_is_symbolic_link (int *) ;

int
mch_is_linked(char_u *fname)
{
    if (mch_is_hard_link(fname) || mch_is_symbolic_link(fname))
 return TRUE;
    return FALSE;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lpos_T ;
typedef int char_u ;


 scalar_t__ FALSE ;
 int NSUBEXP ;
 scalar_t__ REG_MULTI ;
 scalar_t__ need_clear_subexpr ;
 int reg_endp ;
 int reg_endpos ;
 int reg_startp ;
 int reg_startpos ;
 int vim_memset (int ,int,int) ;

__attribute__((used)) static void
cleanup_subexpr()
{
    if (need_clear_subexpr)
    {
 if (REG_MULTI)
 {

     vim_memset(reg_startpos, 0xff, sizeof(lpos_T) * NSUBEXP);
     vim_memset(reg_endpos, 0xff, sizeof(lpos_T) * NSUBEXP);
 }
 else
 {
     vim_memset(reg_startp, 0, sizeof(char_u *) * NSUBEXP);
     vim_memset(reg_endp, 0, sizeof(char_u *) * NSUBEXP);
 }
 need_clear_subexpr = FALSE;
    }
}

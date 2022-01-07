
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_Number ;
typedef int SFormat ;
typedef int SBuf ;


 int lj_strfmt_wfnum (int *,int ,int ,int *) ;
 int setsbufP (int *,int ) ;

SBuf *lj_strfmt_putfnum(SBuf *sb, SFormat sf, lua_Number n)
{
  setsbufP(sb, lj_strfmt_wfnum(sb, sf, n, ((void*)0)));
  return sb;
}

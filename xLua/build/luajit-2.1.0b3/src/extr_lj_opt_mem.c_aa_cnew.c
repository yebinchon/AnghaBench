
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jit_State ;
typedef int IRIns ;
typedef int AliasRet ;


 int ALIAS_MAY ;
 int ALIAS_NO ;
 int aa_escape (int *,int *,int *) ;
 int * aa_findcnew (int *,int *) ;

__attribute__((used)) static AliasRet aa_cnew(jit_State *J, IRIns *refa, IRIns *refb)
{
  IRIns *cnewa = aa_findcnew(J, refa);
  IRIns *cnewb = aa_findcnew(J, refb);
  if (cnewa == cnewb)
    return ALIAS_MAY;
  if (cnewa && cnewb)
    return ALIAS_NO;
  if (cnewb) { cnewa = cnewb; refb = refa; }
  return aa_escape(J, cnewa, refb);
}

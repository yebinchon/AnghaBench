
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TTree ;
typedef int CompileState ;
typedef int Charset ;


 int NOINST ;
 int codegen (int *,int *,int ,int,int *) ;
 scalar_t__ fixedlen (int *) ;
 int * fullset ;
 int getfirst (int *,int const*,int *) ;
 scalar_t__ needfollow (int *) ;

__attribute__((used)) static int codeseq1 (CompileState *compst, TTree *p1, TTree *p2,
                     int tt, const Charset *fl) {
  if (needfollow(p1)) {
    Charset fl1;
    getfirst(p2, fl, &fl1);
    codegen(compst, p1, 0, tt, &fl1);
  }
  else
    codegen(compst, p1, 0, tt, fullset);
  if (fixedlen(p1) != 0)
    return NOINST;
  else return tt;
}

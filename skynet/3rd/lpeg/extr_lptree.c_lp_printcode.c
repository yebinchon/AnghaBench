
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int codesize; int * code; } ;
typedef TYPE_1__ Pattern ;


 TYPE_1__* getpattern (int *,int) ;
 int prepcompile (int *,TYPE_1__*,int) ;
 int printktable (int *,int) ;
 int printpatt (int *,int ) ;

__attribute__((used)) static int lp_printcode (lua_State *L) {
  Pattern *p = getpattern(L, 1);
  printktable(L, 1);
  if (p->code == ((void*)0))
    prepcompile(L, p, 1);
  printpatt(p->code, p->codesize);
  return 0;
}

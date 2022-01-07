
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * top; } ;
typedef TYPE_1__ lua_State ;
typedef int cTValue ;
typedef int TValue ;
typedef int ASMFunction ;


 scalar_t__ LJ_FR2 ;
 int copyTV (TYPE_1__*,int *,int *) ;
 scalar_t__ curr_funcisL (TYPE_1__*) ;
 int * curr_topL (TYPE_1__*) ;
 int setcont (int ,int ) ;
 int setnilV (int ) ;

__attribute__((used)) static TValue *mmcall(lua_State *L, ASMFunction cont, cTValue *mo,
      cTValue *a, cTValue *b)
{
  TValue *top = L->top;
  if (curr_funcisL(L)) top = curr_topL(L);
  setcont(top++, cont);
  if (LJ_FR2) setnilV(top++);
  copyTV(L, top++, mo);
  if (LJ_FR2) setnilV(top++);
  copyTV(L, top, a);
  copyTV(L, top+1, b);
  return top;
}

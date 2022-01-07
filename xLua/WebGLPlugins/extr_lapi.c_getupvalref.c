
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
typedef int UpVal ;
struct TYPE_6__ {int ** upvals; TYPE_1__* p; } ;
struct TYPE_5__ {int sizeupvalues; } ;
typedef int StkId ;
typedef TYPE_2__ LClosure ;


 int api_check (int *,int,char*) ;
 TYPE_2__* clLvalue (int ) ;
 int index2addr (int *,int) ;
 int ttisLclosure (int ) ;

__attribute__((used)) static UpVal **getupvalref (lua_State *L, int fidx, int n, LClosure **pf) {
  LClosure *f;
  StkId fi = index2addr(L, fidx);
  api_check(L, ttisLclosure(fi), "Lua function expected");
  f = clLvalue(fi);
  api_check(L, (1 <= n && n <= f->p->sizeupvalues), "invalid upvalue index");
  if (pf) *pf = f;
  return &f->upvals[n - 1];
}

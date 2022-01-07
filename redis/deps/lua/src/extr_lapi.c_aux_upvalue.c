
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__** upvals; TYPE_4__* p; } ;
struct TYPE_7__ {int nupvalues; int * upvalue; scalar_t__ isC; } ;
struct TYPE_11__ {TYPE_3__ l; TYPE_1__ c; } ;
struct TYPE_10__ {int sizeupvalues; int * upvalues; } ;
struct TYPE_8__ {int * v; } ;
typedef int TValue ;
typedef int StkId ;
typedef TYPE_4__ Proto ;
typedef TYPE_5__ Closure ;


 TYPE_5__* clvalue (int ) ;
 char const* getstr (int ) ;
 int ttisfunction (int ) ;

__attribute__((used)) static const char *aux_upvalue (StkId fi, int n, TValue **val) {
  Closure *f;
  if (!ttisfunction(fi)) return ((void*)0);
  f = clvalue(fi);
  if (f->c.isC) {
    if (!(1 <= n && n <= f->c.nupvalues)) return ((void*)0);
    *val = &f->c.upvalue[n-1];
    return "";
  }
  else {
    Proto *p = f->l.p;
    if (!(1 <= n && n <= p->sizeupvalues)) return ((void*)0);
    *val = f->l.upvals[n-1]->v;
    return getstr(p->upvalues[n-1]);
  }
}

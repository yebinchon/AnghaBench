
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int * v; } ;
typedef TYPE_2__ UpVal ;
struct TYPE_14__ {int nupvalues; int * upvalue; } ;
struct TYPE_13__ {TYPE_2__** upvals; TYPE_3__* p; } ;
struct TYPE_12__ {int sizeupvalues; TYPE_1__* upvalues; } ;
struct TYPE_10__ {int * name; } ;
typedef int TValue ;
typedef int TString ;
typedef int StkId ;
typedef TYPE_3__ Proto ;
typedef TYPE_4__ LClosure ;
typedef TYPE_5__ CClosure ;




 TYPE_5__* clCvalue (int ) ;
 TYPE_4__* clLvalue (int ) ;
 char const* getstr (int *) ;
 int ttype (int ) ;

__attribute__((used)) static const char *aux_upvalue (StkId fi, int n, TValue **val,
                                CClosure **owner, UpVal **uv) {
  switch (ttype(fi)) {
    case 129: {
      CClosure *f = clCvalue(fi);
      if (!(1 <= n && n <= f->nupvalues)) return ((void*)0);
      *val = &f->upvalue[n-1];
      if (owner) *owner = f;
      return "";
    }
    case 128: {
      LClosure *f = clLvalue(fi);
      TString *name;
      Proto *p = f->p;
      if (!(1 <= n && n <= p->sizeupvalues)) return ((void*)0);
      *val = f->upvals[n-1]->v;
      if (uv) *uv = f->upvals[n - 1];
      name = p->upvalues[n-1].name;
      return (name == ((void*)0)) ? "(*no name)" : getstr(name);
    }
    default: return ((void*)0);
  }
}

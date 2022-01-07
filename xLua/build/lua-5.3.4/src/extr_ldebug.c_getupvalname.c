
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nupvalues; int p; TYPE_1__** upvals; } ;
struct TYPE_4__ {int const* v; } ;
typedef int TValue ;
typedef TYPE_2__ LClosure ;
typedef int CallInfo ;


 TYPE_2__* ci_func (int *) ;
 char* upvalname (int ,int) ;

__attribute__((used)) static const char *getupvalname (CallInfo *ci, const TValue *o,
                                 const char **name) {
  LClosure *c = ci_func(ci);
  int i;
  for (i = 0; i < c->nupvalues; i++) {
    if (c->upvals[i]->v == o) {
      *name = upvalname(c->p, i);
      return "upvalue";
    }
  }
  return ((void*)0);
}

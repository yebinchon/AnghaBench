
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ k; } ;
typedef TYPE_1__ expdesc ;
struct TYPE_12__ {struct TYPE_12__* prev; } ;
typedef int TString ;
typedef TYPE_2__ FuncState ;


 scalar_t__ VLOCAL ;
 scalar_t__ VUPVAL ;
 scalar_t__ VVOID ;
 int init_exp (TYPE_1__*,scalar_t__,int) ;
 int markupval (TYPE_2__*,int) ;
 int newupvalue (TYPE_2__*,int *,TYPE_1__*) ;
 int searchupvalue (TYPE_2__*,int *) ;
 int searchvar (TYPE_2__*,int *) ;

__attribute__((used)) static void singlevaraux (FuncState *fs, TString *n, expdesc *var, int base) {
  if (fs == ((void*)0))
    init_exp(var, VVOID, 0);
  else {
    int v = searchvar(fs, n);
    if (v >= 0) {
      init_exp(var, VLOCAL, v);
      if (!base)
        markupval(fs, v);
    }
    else {
      int idx = searchupvalue(fs, n);
      if (idx < 0) {
        singlevaraux(fs->prev, n, var, 0);
        if (var->k == VVOID)
          return;

        idx = newupvalue(fs, n, var);
      }
      init_exp(var, VUPVAL, idx);
    }
  }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int * varname; } ;
struct TYPE_9__ {size_t nlocvars; TYPE_1__* f; } ;
struct TYPE_8__ {int L; TYPE_3__* fs; } ;
struct TYPE_7__ {int sizelocvars; TYPE_5__* locvars; } ;
typedef int TString ;
typedef TYPE_1__ Proto ;
typedef TYPE_2__ LexState ;
typedef TYPE_3__ FuncState ;


 int LocVar ;
 int SHRT_MAX ;
 int luaC_objbarrier (int ,TYPE_1__*,int *) ;
 int luaM_growvector (int ,TYPE_5__*,size_t,int,int ,int ,char*) ;

__attribute__((used)) static int registerlocalvar (LexState *ls, TString *varname) {
  FuncState *fs = ls->fs;
  Proto *f = fs->f;
  int oldsize = f->sizelocvars;
  luaM_growvector(ls->L, f->locvars, fs->nlocvars, f->sizelocvars,
                  LocVar, SHRT_MAX, "local variables");
  while (oldsize < f->sizelocvars)
    f->locvars[oldsize++].varname = ((void*)0);
  f->locvars[fs->nlocvars].varname = varname;
  luaC_objbarrier(ls->L, f, varname);
  return fs->nlocvars++;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int info; } ;
struct TYPE_13__ {scalar_t__ k; TYPE_1__ u; } ;
typedef TYPE_3__ expdesc ;
struct TYPE_16__ {int instack; int * name; int idx; } ;
struct TYPE_15__ {int nups; TYPE_2__* ls; TYPE_4__* f; } ;
struct TYPE_14__ {int sizeupvalues; TYPE_8__* upvalues; } ;
struct TYPE_12__ {int L; } ;
typedef int TString ;
typedef TYPE_4__ Proto ;
typedef TYPE_5__ FuncState ;


 int MAXUPVAL ;
 int Upvaldesc ;
 scalar_t__ VLOCAL ;
 int cast_byte (int ) ;
 int checklimit (TYPE_5__*,int,int ,char*) ;
 int luaC_objbarrier (int ,TYPE_4__*,int *) ;
 int luaM_growvector (int ,TYPE_8__*,int,int,int ,int ,char*) ;

__attribute__((used)) static int newupvalue (FuncState *fs, TString *name, expdesc *v) {
  Proto *f = fs->f;
  int oldsize = f->sizeupvalues;
  checklimit(fs, fs->nups + 1, MAXUPVAL, "upvalues");
  luaM_growvector(fs->ls->L, f->upvalues, fs->nups, f->sizeupvalues,
                  Upvaldesc, MAXUPVAL, "upvalues");
  while (oldsize < f->sizeupvalues)
    f->upvalues[oldsize++].name = ((void*)0);
  f->upvalues[fs->nups].instack = (v->k == VLOCAL);
  f->upvalues[fs->nups].idx = cast_byte(v->u.info);
  f->upvalues[fs->nups].name = name;
  luaC_objbarrier(fs->ls->L, f, name);
  return fs->nups++;
}

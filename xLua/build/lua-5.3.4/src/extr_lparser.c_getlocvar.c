
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int firstlocal; int nlocvars; TYPE_5__* f; TYPE_4__* ls; } ;
struct TYPE_12__ {int * locvars; } ;
struct TYPE_11__ {TYPE_3__* dyd; } ;
struct TYPE_9__ {TYPE_1__* arr; } ;
struct TYPE_10__ {TYPE_2__ actvar; } ;
struct TYPE_8__ {int idx; } ;
typedef int LocVar ;
typedef TYPE_6__ FuncState ;


 int lua_assert (int) ;

__attribute__((used)) static LocVar *getlocvar (FuncState *fs, int i) {
  int idx = fs->ls->dyd->actvar.arr[fs->firstlocal + i].idx;
  lua_assert(idx < fs->nlocvars);
  return &fs->f->locvars[idx];
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
typedef int lua_State ;
struct TYPE_10__ {int nkgc; int kt; int * L; } ;
struct TYPE_9__ {int u64; } ;
typedef TYPE_1__ TValue ;
typedef int GCobj ;
typedef TYPE_2__ FuncState ;
typedef int BCReg ;


 TYPE_1__* lj_tab_set (int *,int ,TYPE_1__*) ;
 int setgcV (int *,TYPE_1__*,int *,int ) ;
 scalar_t__ tvhaskslot (TYPE_1__*) ;
 int tvkslot (TYPE_1__*) ;

__attribute__((used)) static BCReg const_gc(FuncState *fs, GCobj *gc, uint32_t itype)
{
  lua_State *L = fs->L;
  TValue key, *o;
  setgcV(L, &key, gc, itype);

  o = lj_tab_set(L, fs->kt, &key);
  if (tvhaskslot(o))
    return tvkslot(o);
  o->u64 = fs->nkgc;
  return fs->nkgc++;
}

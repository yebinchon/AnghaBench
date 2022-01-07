
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_11__ {int nval; } ;
struct TYPE_14__ {TYPE_1__ u; } ;
struct TYPE_13__ {int nkn; int kt; int * L; } ;
struct TYPE_12__ {int u64; } ;
typedef TYPE_2__ TValue ;
typedef TYPE_3__ FuncState ;
typedef TYPE_4__ ExpDesc ;
typedef int BCReg ;


 int expr_isnumk (TYPE_4__*) ;
 TYPE_2__* lj_tab_set (int *,int ,int *) ;
 int lua_assert (int ) ;
 scalar_t__ tvhaskslot (TYPE_2__*) ;
 int tvkslot (TYPE_2__*) ;

__attribute__((used)) static BCReg const_num(FuncState *fs, ExpDesc *e)
{
  lua_State *L = fs->L;
  TValue *o;
  lua_assert(expr_isnumk(e));
  o = lj_tab_set(L, fs->kt, &e->u.nval);
  if (tvhaskslot(o))
    return tvkslot(o);
  o->u64 = fs->nkn;
  return fs->nkn++;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
typedef int cTValue ;
struct TYPE_4__ {scalar_t__ sizebc; } ;
typedef TYPE_1__ GCproto ;
typedef int GCfunc ;
typedef scalar_t__ BCPos ;
typedef int BCLine ;


 scalar_t__ NO_BCPOS ;
 scalar_t__ debug_framepc (int *,int *,int *) ;
 TYPE_1__* funcproto (int *) ;
 int lj_debug_line (TYPE_1__*,scalar_t__) ;
 int lua_assert (int) ;

__attribute__((used)) static BCLine debug_frameline(lua_State *L, GCfunc *fn, cTValue *nextframe)
{
  BCPos pc = debug_framepc(L, fn, nextframe);
  if (pc != NO_BCPOS) {
    GCproto *pt = funcproto(fn);
    lua_assert(pc <= pt->sizebc);
    return lj_debug_line(pt, pc);
  }
  return -1;
}

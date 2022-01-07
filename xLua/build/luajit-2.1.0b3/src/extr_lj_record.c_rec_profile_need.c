
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float prof_mode; int prev_line; int * prev_pt; } ;
typedef TYPE_1__ jit_State ;
typedef int GCproto ;
typedef scalar_t__ BCLine ;
typedef int BCIns ;


 scalar_t__ lj_debug_line (int *,int ) ;
 int lua_assert (int) ;
 int proto_bcpos (int *,int const*) ;

__attribute__((used)) static int rec_profile_need(jit_State *J, GCproto *pt, const BCIns *pc)
{
  GCproto *ppt;
  lua_assert(J->prof_mode == 'f' || J->prof_mode == 'l');
  if (!pt)
    return 0;
  ppt = J->prev_pt;
  J->prev_pt = pt;
  if (pt != ppt && ppt) {
    J->prev_line = -1;
    return 1;
  }
  if (J->prof_mode == 'l') {
    BCLine line = lj_debug_line(pt, proto_bcpos(pt, pc));
    BCLine pline = J->prev_line;
    J->prev_line = line;
    if (pline != line)
      return 1;
  }
  return 0;
}

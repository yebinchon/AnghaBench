
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ptrdiff_t ;
typedef int int8_t ;
struct TYPE_3__ {scalar_t__* mcp; } ;
typedef scalar_t__ MCode ;
typedef scalar_t__* MCLabel ;
typedef TYPE_1__ ASMState ;


 scalar_t__ XI_JCCs ;
 int lua_assert (int) ;

__attribute__((used)) static void emit_sjcc(ASMState *as, int cc, MCLabel target)
{
  MCode *p = as->mcp;
  ptrdiff_t delta = target - p;
  lua_assert(delta == (int8_t)delta);
  p[-1] = (MCode)(int8_t)delta;
  p[-2] = (MCode)(XI_JCCs+(cc&15));
  as->mcp = p - 2;
}

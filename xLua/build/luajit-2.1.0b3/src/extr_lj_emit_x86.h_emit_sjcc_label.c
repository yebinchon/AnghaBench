
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* mcp; } ;
typedef scalar_t__ MCode ;
typedef scalar_t__* MCLabel ;
typedef TYPE_1__ ASMState ;


 scalar_t__ XI_JCCs ;

__attribute__((used)) static MCLabel emit_sjcc_label(ASMState *as, int cc)
{
  MCode *p = as->mcp;
  p[-1] = 0;
  p[-2] = (MCode)(XI_JCCs+(cc&15));
  as->mcp = p - 2;
  return p;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ls; TYPE_1__* bcbase; } ;
struct TYPE_4__ {int ins; } ;
typedef TYPE_2__ FuncState ;
typedef size_t BCPos ;
typedef int BCIns ;


 size_t BCBIAS_J ;
 size_t BCMAX_D ;
 int LJ_ERR_XJUMP ;
 size_t NO_JMP ;
 int err_syntax (int ,int ) ;
 int lua_assert (int) ;
 int setbc_d (int *,size_t) ;

__attribute__((used)) static void jmp_patchins(FuncState *fs, BCPos pc, BCPos dest)
{
  BCIns *jmp = &fs->bcbase[pc].ins;
  BCPos offset = dest-(pc+1)+BCBIAS_J;
  lua_assert(dest != NO_JMP);
  if (offset > BCMAX_D)
    err_syntax(fs->ls, LJ_ERR_XJUMP);
  setbc_d(jmp, offset);
}

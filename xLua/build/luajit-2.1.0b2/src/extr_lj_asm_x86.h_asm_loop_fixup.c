
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int8_t ;
typedef scalar_t__ int32_t ;
struct TYPE_5__ {int loopinv; int orignins; TYPE_1__* T; int stopins; int curins; scalar_t__* realign; scalar_t__* mcp; scalar_t__* mctop; } ;
struct TYPE_4__ {int nins; } ;
typedef scalar_t__ MCode ;
typedef TYPE_2__ ASMState ;


 scalar_t__ XI_JMP ;
 scalar_t__ XI_JMPs ;
 int lua_assert (int) ;

__attribute__((used)) static void asm_loop_fixup(ASMState *as)
{
  MCode *p = as->mctop;
  MCode *target = as->mcp;
  if (as->realign) {
    as->realign = ((void*)0);
    lua_assert(((intptr_t)target & 15) == 0);
    if (as->loopinv) {
      p -= 5;
      p[0] = XI_JMP;
      lua_assert(target - p >= -128);
      p[-1] = (MCode)(target - p);
      if (as->loopinv == 2)
 p[-3] = (MCode)(target - p + 2);
    } else {
      lua_assert(target - p >= -128);
      p[-1] = (MCode)(int8_t)(target - p);
      p[-2] = XI_JMPs;
    }
  } else {
    MCode *newloop;
    p[-5] = XI_JMP;
    if (as->loopinv) {

      p -= 5;
      newloop = target+4;
      *(int32_t *)(p-4) = (int32_t)(target - p);
      if (as->loopinv == 2) {
 *(int32_t *)(p-10) = (int32_t)(target - p + 6);
 newloop = target+8;
      }
    } else {
      *(int32_t *)(p-4) = (int32_t)(target - p);
      newloop = target+3;
    }

    if (newloop >= p - 128) {
      as->realign = newloop;
      as->curins = as->stopins;
      as->T->nins = as->orignins;
    }
  }
}

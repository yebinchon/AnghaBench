
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int int32_t ;
struct TYPE_10__ {scalar_t__ u64; } ;
struct TYPE_9__ {void* mcp; } ;
struct TYPE_8__ {scalar_t__ o; scalar_t__ i; } ;
typedef void MCode ;
typedef int IRRef ;
typedef TYPE_1__ IRIns ;
typedef TYPE_2__ ASMState ;


 scalar_t__ IR_KINT64 ;
 int UNUSED (TYPE_2__*) ;
 TYPE_3__* ir_k64 (TYPE_1__*) ;
 scalar_t__ irref_isk (int ) ;

__attribute__((used)) static void *asm_callx_func(ASMState *as, IRIns *irf, IRRef func)
{





  if (irref_isk(func)) {
    MCode *p;
    if (irf->o == IR_KINT64)
      p = (MCode *)(void *)ir_k64(irf)->u64;
    else
      p = (MCode *)(void *)(uintptr_t)(uint32_t)irf->i;
    if (p - as->mcp == (int32_t)(p - as->mcp))
      return p;

  }

  return ((void*)0);
}

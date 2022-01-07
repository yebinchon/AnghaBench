
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int64_t ;
typedef scalar_t__ int32_t ;
struct TYPE_9__ {scalar_t__ u64; } ;
struct TYPE_8__ {scalar_t__ u64; } ;
struct TYPE_7__ {scalar_t__ o; scalar_t__ i; int t; } ;
typedef int IRRef ;
typedef TYPE_1__ IRIns ;
typedef int ASMState ;


 TYPE_1__* IR (int ) ;
 scalar_t__ IR_KINT64 ;
 scalar_t__ IR_KNULL ;
 scalar_t__ checki32 (int ) ;
 TYPE_4__* ir_k64 (TYPE_1__*) ;
 TYPE_2__* ir_kint64 (TYPE_1__*) ;
 scalar_t__ irref_isk (int ) ;
 int irt_is64 (int ) ;

__attribute__((used)) static int asm_isk32(ASMState *as, IRRef ref, int32_t *k)
{
  if (irref_isk(ref)) {
    IRIns *ir = IR(ref);
    if (ir->o != IR_KINT64) {
      *k = ir->i;
      return 1;
    } else if (checki32((int64_t)ir_kint64(ir)->u64)) {
      *k = (int32_t)ir_kint64(ir)->u64;
      return 1;
    }

  }
  return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef scalar_t__ int32_t ;
struct TYPE_10__ {int framesize; } ;
struct TYPE_13__ {TYPE_1__ pt; } ;
struct TYPE_12__ {TYPE_2__* T; } ;
struct TYPE_11__ {int startpt; int topslot; scalar_t__ spadjust; scalar_t__ traceno; } ;
typedef TYPE_3__ ASMState ;


 int asm_head_root_base (TYPE_3__*) ;
 scalar_t__ asm_stack_adjust (TYPE_3__*) ;
 int emit_setvmstate (TYPE_3__*,scalar_t__) ;
 int emit_spsub (TYPE_3__*,scalar_t__) ;
 TYPE_4__* gcref (int ) ;

__attribute__((used)) static void asm_head_root(ASMState *as)
{
  int32_t spadj;
  asm_head_root_base(as);
  emit_setvmstate(as, (int32_t)as->T->traceno);
  spadj = asm_stack_adjust(as);
  as->T->spadjust = (uint16_t)spadj;
  emit_spsub(as, spadj);

  as->T->topslot = gcref(as->T->startpt)->pt.framesize;
}

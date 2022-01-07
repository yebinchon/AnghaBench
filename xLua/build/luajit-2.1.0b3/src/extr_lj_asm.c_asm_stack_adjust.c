
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {scalar_t__ evenspill; } ;
typedef TYPE_1__ ASMState ;


 scalar_t__ SPS_FIXED ;
 int sps_align (scalar_t__) ;
 int sps_scale (int ) ;

__attribute__((used)) static int32_t asm_stack_adjust(ASMState *as)
{
  if (as->evenspill <= SPS_FIXED)
    return 0;
  return sps_scale(sps_align(as->evenspill));
}

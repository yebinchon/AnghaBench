
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ sb_status ;
struct TYPE_3__ {int base; } ;
typedef TYPE_1__ SB16 ;


 scalar_t__ SB_FALSE ;
 scalar_t__ SB_TRUE ;
 int base ;
 scalar_t__ reset_dsp (int) ;

sb_status detect_dsp(SB16* sb16)
{
 for(base=0x200;base<0x280;base+=0x10)
  if(reset_dsp(base)==SB_TRUE)
  {
   sb16->base=base;
    return SB_TRUE;
  }
 return SB_FALSE;
}

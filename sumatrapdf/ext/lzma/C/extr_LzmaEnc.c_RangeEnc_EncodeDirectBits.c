
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_4__ {int range; int low; } ;
typedef TYPE_1__ CRangeEnc ;


 int RangeEnc_ShiftLow (TYPE_1__*) ;
 int kTopValue ;

__attribute__((used)) static void RangeEnc_EncodeDirectBits(CRangeEnc *p, UInt32 value, int numBits)
{
  do
  {
    p->range >>= 1;
    p->low += p->range & (0 - ((value >> --numBits) & 1));
    if (p->range < kTopValue)
    {
      p->range <<= 8;
      RangeEnc_ShiftLow(p);
    }
  }
  while (numBits != 0);
}

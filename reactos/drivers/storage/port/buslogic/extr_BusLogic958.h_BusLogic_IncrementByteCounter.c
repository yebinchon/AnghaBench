
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int Units; int Billions; } ;
typedef TYPE_1__ BusLogic_ByteCounter_T ;



__attribute__((used)) static void
BusLogic_IncrementByteCounter(BusLogic_ByteCounter_T *ByteCounter,
                              unsigned int Amount)
{
  ByteCounter->Units += Amount;
  if (ByteCounter->Units > 999999999)
  {
      ByteCounter->Units -= 1000000000;
      ByteCounter->Billions++;
  }
}

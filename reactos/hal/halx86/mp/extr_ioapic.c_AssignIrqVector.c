
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ULONG ;


 int ASSERT (int ) ;
 int DPRINT1 (char*) ;
 int FALSE ;
 size_t FIRST_DEVICE_VECTOR ;
 size_t FIRST_SYSTEM_VECTOR ;
 size_t IRQ2VECTOR (size_t) ;
 size_t* IRQVectorMap ;

__attribute__((used)) static ULONG
AssignIrqVector(ULONG irq)
{



   ULONG vector;

   vector = IRQVectorMap[irq];
   if (vector > 0)
   {
      return vector;
   }
   vector = IRQ2VECTOR(irq);
   IRQVectorMap[irq] = vector;
   return vector;

}

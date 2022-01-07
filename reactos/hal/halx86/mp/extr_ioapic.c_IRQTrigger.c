
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_2__ {size_t SrcBusId; int IrqFlag; } ;


 int * BUSMap ;
 int DPRINT (char*) ;
 TYPE_1__* IRQMap ;




 size_t default_EISA_trigger (size_t) ;
 size_t default_ISA_trigger (size_t) ;
 size_t default_MCA_trigger (size_t) ;
 size_t default_PCI_trigger (size_t) ;

__attribute__((used)) static ULONG
IRQTrigger(ULONG idx)
{
   ULONG bus = IRQMap[idx].SrcBusId;
   ULONG trigger;




   switch ((IRQMap[idx].IrqFlag >> 2) & 3)
   {
      case 0:
  {
            switch (BUSMap[bus])
     {
        case 130:
           trigger = default_ISA_trigger(idx);
    break;

        case 131:
    trigger = default_EISA_trigger(idx);
    break;

        case 128:
    trigger = default_PCI_trigger(idx);
    break;

               case 129:
    trigger = default_MCA_trigger(idx);
    break;

               default:
                  DPRINT("Broken BIOS!!\n");
    trigger = 1;
     }
  }
  break;

      case 1:
  trigger = 0;
  break;

      case 2:
  DPRINT("Broken BIOS!!\n");
  trigger = 1;
  break;

      case 3:
   trigger = 1;
  break;

      default:
  DPRINT("Broken BIOS!!\n");
  trigger = 0;
   }
   return trigger;
}

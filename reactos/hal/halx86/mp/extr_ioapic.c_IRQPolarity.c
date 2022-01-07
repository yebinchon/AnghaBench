
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




 size_t default_EISA_polarity (size_t) ;
 size_t default_ISA_polarity (size_t) ;
 size_t default_MCA_polarity (size_t) ;
 size_t default_PCI_polarity (size_t) ;

__attribute__((used)) static ULONG
IRQPolarity(ULONG idx)
{
   ULONG bus = IRQMap[idx].SrcBusId;
   ULONG polarity;




   switch (IRQMap[idx].IrqFlag & 3)
   {
      case 0:
         {
            switch (BUSMap[bus])
     {
        case 130:
    polarity = default_ISA_polarity(idx);
    break;

        case 131:
    polarity = default_EISA_polarity(idx);
    break;

        case 128:
    polarity = default_PCI_polarity(idx);
    break;

        case 129:
                  polarity = default_MCA_polarity(idx);
    break;

        default:
    DPRINT("Broken BIOS!!\n");
    polarity = 1;
     }
  }
  break;

      case 1:
  polarity = 0;
  break;

      case 2:
  DPRINT("Broken BIOS!!\n");
  polarity = 1;
  break;

      case 3:
         polarity = 1;
  break;

      default:
  DPRINT("Broken BIOS!!\n");
  polarity = 1;
   }
   return polarity;
}

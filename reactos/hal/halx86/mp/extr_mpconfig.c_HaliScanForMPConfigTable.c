
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
typedef scalar_t__ UCHAR ;
struct TYPE_3__ {scalar_t__ Signature; int Length; int Specification; int Feature2; int Feature1; } ;
typedef scalar_t__ PULONG ;
typedef int PUCHAR ;
typedef TYPE_1__ MP_FLOATING_POINTER ;
typedef int BOOLEAN ;


 int DPRINT (char*,...) ;
 int FALSE ;
 int FEATURE2_IMCRP ;
 scalar_t__ MPChecksum (int ,int) ;
 scalar_t__ MPF_SIGNATURE ;
 TYPE_1__* Mpf ;
 int TRUE ;

__attribute__((used)) static BOOLEAN
HaliScanForMPConfigTable(ULONG Base,
    ULONG Size)
{
   PULONG bp = (PULONG)Base;
   MP_FLOATING_POINTER* mpf;
   UCHAR Checksum;

   while (Size > 0)
   {
      mpf = (MP_FLOATING_POINTER*)bp;
      if (mpf->Signature == MPF_SIGNATURE)
      {
  Checksum = MPChecksum((PUCHAR)bp, 16);
  DPRINT("Found MPF signature at %x, checksum %x\n", bp, Checksum);
         if (Checksum == 0 &&
      mpf->Length == 1)
         {
            DPRINT("Intel MultiProcessor Specification v1.%d compliant system.\n",
                   mpf->Specification);

            if (mpf->Feature2 & FEATURE2_IMCRP)
     {
               DPRINT("Running in IMCR and PIC compatibility mode.\n");
            }
     else
     {
               DPRINT("Running in Virtual Wire compatibility mode.\n");
     }


            switch (mpf->Feature1)
            {
               case 0:

                  break;
               case 1:
                  DPRINT("ISA\n");
                  break;
               case 2:
                  DPRINT("EISA with no IRQ8 chaining\n");
                  break;
               case 3:
                  DPRINT("EISA\n");
                  break;
               case 4:
                  DPRINT("MCA\n");
                  break;
               case 5:
                  DPRINT("ISA and PCI\n");
                  break;
               case 6:
                  DPRINT("EISA and PCI\n");
                  break;
               case 7:
                  DPRINT("MCA and PCI\n");
                  break;
               default:
                  DPRINT("Unknown standard configuration %d\n", mpf->Feature1);
                  return FALSE;
            }
            Mpf = mpf;
            return TRUE;
         }
      }
      bp += 4;
      Size -= 16;
   }
   return FALSE;
}

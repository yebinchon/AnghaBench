
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int NumberOfSections; } ;
struct TYPE_10__ {TYPE_2__ FileHeader; } ;
struct TYPE_7__ {int VirtualSize; } ;
struct TYPE_9__ {int PointerToRawData; int VirtualAddress; TYPE_1__ Misc; } ;
typedef TYPE_3__* PIMAGE_SECTION_HEADER ;
typedef scalar_t__ DWORD ;


 TYPE_3__* IMAGE_FIRST_SECTION (TYPE_4__*) ;
 scalar_t__ buffer ;
 scalar_t__ dtohl (int ) ;
 TYPE_4__* nt_header ;

void *rva_to_ptr(DWORD rva)
{
   PIMAGE_SECTION_HEADER section_header;
   unsigned int i;

   for (i = 0, section_header = IMAGE_FIRST_SECTION(nt_header);
        i < dtohl(nt_header->FileHeader.NumberOfSections);
        i++, section_header++)
   {
      if (rva >= dtohl(section_header->VirtualAddress) &&
          rva < dtohl(section_header->VirtualAddress) +
                dtohl(section_header->Misc.VirtualSize))
      {
         return buffer + rva - dtohl(section_header->VirtualAddress) +
                dtohl(section_header->PointerToRawData);
      }
   }

   return ((void*)0);
}

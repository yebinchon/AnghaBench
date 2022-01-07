
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ulong ;
struct _IMAGE_SECTION_HEADER {scalar_t__ PointerToRawData; scalar_t__ VirtualAddress; scalar_t__ SizeOfRawData; } ;
struct TYPE_2__ {int Buffer; } ;


 TYPE_1__* ANSI_NAME_STRING (struct _IMAGE_SECTION_HEADER*) ;
 scalar_t__ nil ;
 int werrstr (char*,scalar_t__,...) ;

ulong pefindrva(struct _IMAGE_SECTION_HEADER *SectionHeaders, int NumberOfSections, ulong TargetPhysical) {
 int i;
 werrstr("Finding RVA for Physical %x\n", TargetPhysical);
 for (i = 0; i < NumberOfSections; i++) {
  werrstr("Section %d name %s Raw %x Virt %x\n",
      i,
      ANSI_NAME_STRING(&SectionHeaders[i])->Buffer,
      SectionHeaders[i].PointerToRawData,
      SectionHeaders[i].VirtualAddress);
  if (TargetPhysical >= SectionHeaders[i].PointerToRawData &&
   TargetPhysical < SectionHeaders[i].PointerToRawData + SectionHeaders[i].SizeOfRawData) {
   werrstr("RVA %x\n", TargetPhysical - SectionHeaders[i].PointerToRawData + SectionHeaders[i].VirtualAddress);
   return TargetPhysical - SectionHeaders[i].PointerToRawData + SectionHeaders[i].VirtualAddress;
  }
 }
 return nil;
}

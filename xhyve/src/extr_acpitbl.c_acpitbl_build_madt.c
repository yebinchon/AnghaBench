
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 scalar_t__ MADT_OFFSET ;
 int SCI_INT ;
 int acpi_ncpu ;
 int acpitbl_checksum (void*,size_t) ;
 int acpitbl_write32 (void*,int,int) ;
 int acpitbl_write8 (void*,int,int) ;
 int memcpy (void*,int const*,int) ;
 scalar_t__ tb ;

__attribute__((used)) static void
acpitbl_build_madt(void) {
 void *madt_head, *madt_apic, *madt_tail;
 int i;
 static const uint8_t madt_head_tmpl[44] = {
  0x41, 0x50, 0x49, 0x43, 0x00, 0x00, 0x00, 0x00,
  0x01, 0x00, 0x42, 0x48, 0x59, 0x56, 0x45, 0x20,
  0x42, 0x56, 0x4D, 0x41, 0x44, 0x54, 0x20, 0x20,
  0x01, 0x00, 0x00, 0x00, 0x49, 0x4E, 0x54, 0x4C,
  0x28, 0x08, 0x14, 0x20, 0x00, 0x00, 0xE0, 0xFE,
  0x01, 0x00, 0x00, 0x00,
 };
 static const uint8_t madt_apic_tmpl[8] = {
  0x00, 0x08, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,
 };
 static const uint8_t madt_tail_tmpl[38] = {
  0x01, 0x0C, 0x00, 0x00, 0x00, 0x00, 0xC0, 0xFE,
  0x00, 0x00, 0x00, 0x00, 0x02, 0x0A, 0x00, 0x00,
  0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x02, 0x0A,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00,
  0x04, 0x06, 0xFF, 0x05, 0x00, 0x01
 };

 madt_head = (void *) (((uintptr_t) tb) + MADT_OFFSET);

 memcpy(madt_head, madt_head_tmpl, 44);

 for (i = 0; i < acpi_ncpu; i++) {
  madt_apic = (void *) (((uintptr_t) tb)
   + ((size_t) ((MADT_OFFSET + 44) + (8 * i))));

  memcpy(madt_apic, madt_apic_tmpl, 8);

  acpitbl_write8(madt_apic, 0x2, ((uint8_t) i));
  acpitbl_write8(madt_apic, 0x3, ((uint8_t) i));
 }

 madt_tail = (void *) (((uintptr_t) tb)
  + ((size_t) ((MADT_OFFSET + 44) + (8 * acpi_ncpu))));

 memcpy(madt_tail, madt_tail_tmpl, 38);

 acpitbl_write8(madt_tail, 0x2, 0);
 acpitbl_write8(madt_tail, 0x19, SCI_INT);
 acpitbl_write32(madt_tail, 0x1a, SCI_INT);

 acpitbl_write32(madt_head, 0x4, ((uint32_t) (44 + (8 * acpi_ncpu) + 38)));
 acpitbl_write8(madt_head, 0x9,
  acpitbl_checksum(madt_head, ((size_t) (44 + (8 * acpi_ncpu) + 38))));
}

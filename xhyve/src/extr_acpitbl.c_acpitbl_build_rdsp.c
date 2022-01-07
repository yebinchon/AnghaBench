
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;


 scalar_t__ RSDT_OFFSET ;
 scalar_t__ XHYVE_ACPI_BASE ;
 scalar_t__ XSDT_OFFSET ;
 int acpitbl_checksum (void*,int) ;
 int acpitbl_write32 (void*,int,int ) ;
 int acpitbl_write64 (void*,int,int ) ;
 int acpitbl_write8 (void*,int,int ) ;
 int memcpy (void*,int const*,int) ;
 scalar_t__ tb ;

__attribute__((used)) static void
acpitbl_build_rdsp(void) {
 void *rdsp;
 static const uint8_t rdsp_tmpl[36] = {
  0x52, 0x53, 0x44, 0x20, 0x50, 0x54, 0x52, 0x20,
  0x00, 0x42, 0x48, 0x59, 0x56, 0x45, 0x20, 0x02,
  0x00, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00
 };

 rdsp = (void *) (((uintptr_t) tb) + 0);

 memcpy(rdsp, rdsp_tmpl, 36);

 acpitbl_write32(rdsp, 0x10, ((uint32_t) (XHYVE_ACPI_BASE + RSDT_OFFSET)));
 acpitbl_write64(rdsp, 0x18, ((uint64_t) (XHYVE_ACPI_BASE + XSDT_OFFSET)));

 acpitbl_write8(rdsp, 0x8, acpitbl_checksum(rdsp, 20));

 acpitbl_write8(rdsp, 0x20, acpitbl_checksum(rdsp, 36));
}

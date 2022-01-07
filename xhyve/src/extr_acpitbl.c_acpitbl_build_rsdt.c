
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 scalar_t__ FADT_OFFSET ;
 scalar_t__ HPET_OFFSET ;
 scalar_t__ MADT_OFFSET ;
 scalar_t__ MCFG_OFFSET ;
 scalar_t__ RSDT_OFFSET ;
 scalar_t__ XHYVE_ACPI_BASE ;
 int acpitbl_checksum (void*,int) ;
 int acpitbl_write32 (void*,int,int ) ;
 int acpitbl_write8 (void*,int,int ) ;
 int memcpy (void*,int const*,int) ;
 scalar_t__ tb ;

__attribute__((used)) static void
acpitbl_build_rsdt(void) {
 void *rsdt;
 static const uint8_t rsdt_tmpl[52] = {
  0x52, 0x53, 0x44, 0x54, 0x34, 0x00, 0x00, 0x00,
  0x01, 0x00, 0x42, 0x48, 0x59, 0x56, 0x45, 0x20,
  0x42, 0x56, 0x52, 0x53, 0x44, 0x54, 0x20, 0x20,
  0x01, 0x00, 0x00, 0x00, 0x49, 0x4E, 0x54, 0x4C,
  0x28, 0x08, 0x14, 0x20, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00
 };

 rsdt = (void *) (((uintptr_t) tb) + RSDT_OFFSET);

 memcpy(rsdt, rsdt_tmpl, 52);

 acpitbl_write32(rsdt, 0x24, ((uint32_t) (XHYVE_ACPI_BASE + MADT_OFFSET)));
 acpitbl_write32(rsdt, 0x28, ((uint32_t) (XHYVE_ACPI_BASE + FADT_OFFSET)));
 acpitbl_write32(rsdt, 0x2c, ((uint32_t) (XHYVE_ACPI_BASE + HPET_OFFSET)));
 acpitbl_write32(rsdt, 0x30, ((uint32_t) (XHYVE_ACPI_BASE + MCFG_OFFSET)));

 acpitbl_write8(rsdt, 0x9, acpitbl_checksum(rsdt, 52));
}

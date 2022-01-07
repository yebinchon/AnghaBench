
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 scalar_t__ FADT_OFFSET ;
 scalar_t__ HPET_OFFSET ;
 scalar_t__ MADT_OFFSET ;
 scalar_t__ MCFG_OFFSET ;
 scalar_t__ XHYVE_ACPI_BASE ;
 scalar_t__ XSDT_OFFSET ;
 int acpitbl_checksum (void*,int) ;
 int acpitbl_write64 (void*,int,int ) ;
 int acpitbl_write8 (void*,int,int ) ;
 int memcpy (void*,int const*,int) ;
 scalar_t__ tb ;

__attribute__((used)) static void
acpitbl_build_xsdt(void) {
 void *xsdt;
 static const uint8_t xsdt_tmpl[68] = {
    0x58, 0x53, 0x44, 0x54, 0x44, 0x00, 0x00, 0x00,
    0x01, 0x00, 0x42, 0x48, 0x59, 0x56, 0x45, 0x20,
    0x42, 0x56, 0x58, 0x53, 0x44, 0x54, 0x20, 0x20,
    0x01, 0x00, 0x00, 0x00, 0x49, 0x4E, 0x54, 0x4C,
    0x28, 0x08, 0x14, 0x20, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00
 };

 xsdt = (void *) (((uintptr_t) tb) + XSDT_OFFSET);

 memcpy(xsdt, xsdt_tmpl, 68);

 acpitbl_write64(xsdt, 0x24, ((uint64_t) (XHYVE_ACPI_BASE + MADT_OFFSET)));
 acpitbl_write64(xsdt, 0x2c, ((uint64_t) (XHYVE_ACPI_BASE + FADT_OFFSET)));
 acpitbl_write64(xsdt, 0x34, ((uint64_t) (XHYVE_ACPI_BASE + HPET_OFFSET)));
 acpitbl_write64(xsdt, 0x3c, ((uint64_t) (XHYVE_ACPI_BASE + MCFG_OFFSET)));

 acpitbl_write8(xsdt, 0x9, acpitbl_checksum(xsdt, 68));
}

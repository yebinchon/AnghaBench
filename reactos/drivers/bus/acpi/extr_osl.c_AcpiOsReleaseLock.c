
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PKSPIN_LOCK ;
typedef scalar_t__ KIRQL ;
typedef scalar_t__ ACPI_SPINLOCK ;
typedef int ACPI_CPU_FLAGS ;


 scalar_t__ DISPATCH_LEVEL ;
 int KeReleaseSpinLock (int ,scalar_t__) ;
 int KeReleaseSpinLockFromDpcLevel (int ) ;

void
AcpiOsReleaseLock(
    ACPI_SPINLOCK Handle,
    ACPI_CPU_FLAGS Flags)
{
    KIRQL OldIrql = (KIRQL)Flags;

    if (OldIrql >= DISPATCH_LEVEL)
    {
        KeReleaseSpinLockFromDpcLevel((PKSPIN_LOCK)Handle);
    }
    else
    {
        KeReleaseSpinLock((PKSPIN_LOCK)Handle, OldIrql);
    }
}

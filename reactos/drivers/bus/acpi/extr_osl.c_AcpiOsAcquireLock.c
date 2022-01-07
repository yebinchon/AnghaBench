
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PKSPIN_LOCK ;
typedef int KIRQL ;
typedef scalar_t__ ACPI_SPINLOCK ;
typedef int ACPI_CPU_FLAGS ;


 int DISPATCH_LEVEL ;
 int KeAcquireSpinLock (int ,int *) ;
 int KeAcquireSpinLockAtDpcLevel (int ) ;
 int KeGetCurrentIrql () ;

ACPI_CPU_FLAGS
AcpiOsAcquireLock(
    ACPI_SPINLOCK Handle)
{
    KIRQL OldIrql;

    if ((OldIrql = KeGetCurrentIrql()) >= DISPATCH_LEVEL)
    {
        KeAcquireSpinLockAtDpcLevel((PKSPIN_LOCK)Handle);
    }
    else
    {
        KeAcquireSpinLock((PKSPIN_LOCK)Handle, &OldIrql);
    }

    return (ACPI_CPU_FLAGS)OldIrql;
}

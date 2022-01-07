
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_4__ {int Lock; int Event; int CurrentUnits; } ;
typedef TYPE_1__* PACPI_SEM ;
typedef int KIRQL ;
typedef int ACPI_STATUS ;
typedef TYPE_1__* ACPI_SEMAPHORE ;


 int AE_BAD_PARAMETER ;
 int AE_OK ;
 int DPRINT1 (char*) ;
 int FALSE ;
 int IO_NO_INCREMENT ;
 int KeAcquireSpinLock (int *,int *) ;
 int KeReleaseSpinLock (int *,int ) ;
 int KeSetEvent (int *,int ,int ) ;

ACPI_STATUS
AcpiOsSignalSemaphore(
    ACPI_SEMAPHORE Handle,
    UINT32 Units)
{
    PACPI_SEM Sem = Handle;
    KIRQL OldIrql;

    if (!Handle)
    {
        DPRINT1("Bad parameter\n");
        return AE_BAD_PARAMETER;
    }

    KeAcquireSpinLock(&Sem->Lock, &OldIrql);

    Sem->CurrentUnits += Units;
    KeSetEvent(&Sem->Event, IO_NO_INCREMENT, FALSE);

    KeReleaseSpinLock(&Sem->Lock, OldIrql);

    return AE_OK;
}

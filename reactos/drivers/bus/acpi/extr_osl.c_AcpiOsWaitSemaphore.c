
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
typedef scalar_t__ UINT16 ;
struct TYPE_4__ {scalar_t__ CurrentUnits; int Lock; int Event; } ;
typedef TYPE_1__* PACPI_SEM ;
typedef int KIRQL ;
typedef int ACPI_STATUS ;
typedef TYPE_1__* ACPI_SEMAPHORE ;


 scalar_t__ ACPI_DO_NOT_WAIT ;
 int AE_BAD_PARAMETER ;
 int AE_OK ;
 int AE_TIME ;
 int DPRINT1 (char*) ;
 int Executive ;
 int FALSE ;
 int IO_NO_INCREMENT ;
 int KeAcquireSpinLock (int *,int *) ;
 int KeReleaseSpinLock (int *,int ) ;
 int KeSetEvent (int *,int ,int ) ;
 int KeWaitForSingleObject (int *,int ,int ,int ,int *) ;
 int KernelMode ;

ACPI_STATUS
AcpiOsWaitSemaphore(
    ACPI_SEMAPHORE Handle,
    UINT32 Units,
    UINT16 Timeout)
{
    PACPI_SEM Sem = Handle;
    KIRQL OldIrql;

    if (!Handle)
    {
        DPRINT1("Bad parameter\n");
        return AE_BAD_PARAMETER;
    }

    KeAcquireSpinLock(&Sem->Lock, &OldIrql);


    if ((Timeout == ACPI_DO_NOT_WAIT) && (Sem->CurrentUnits < Units))
    {

        KeReleaseSpinLock(&Sem->Lock, OldIrql);
        return AE_TIME;
    }


    while (Sem->CurrentUnits < Units)
    {
        KeReleaseSpinLock(&Sem->Lock, OldIrql);
        KeWaitForSingleObject(&Sem->Event,
                              Executive,
                              KernelMode,
                              FALSE,
                              ((void*)0));
        KeAcquireSpinLock(&Sem->Lock, &OldIrql);
    }

    Sem->CurrentUnits -= Units;

    if (Sem->CurrentUnits != 0) KeSetEvent(&Sem->Event, IO_NO_INCREMENT, FALSE);

    KeReleaseSpinLock(&Sem->Lock, OldIrql);

    return AE_OK;
}

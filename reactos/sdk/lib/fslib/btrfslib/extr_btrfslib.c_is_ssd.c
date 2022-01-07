
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ULONG ;
struct TYPE_11__ {int Length; int DataTransferLength; int TimeOutValue; int DataBufferOffset; int * CurrentTaskFile; int AtaFlags; } ;
struct TYPE_10__ {int NominalMediaRotationRate; } ;
typedef int NTSTATUS ;
typedef int IO_STATUS_BLOCK ;
typedef TYPE_1__ IDENTIFY_DEVICE_DATA ;
typedef int HANDLE ;
typedef int BOOL ;
typedef TYPE_2__ ATA_PASS_THROUGH_EX ;


 int ATA_FLAGS_DATA_IN ;
 int FALSE ;
 int HEAP_ZERO_MEMORY ;
 int IDE_COMMAND_IDENTIFY ;
 int IOCTL_ATA_PASS_THROUGH ;
 scalar_t__ NT_SUCCESS (int ) ;
 int NtDeviceIoControlFile (int ,int *,int *,int *,int *,int ,TYPE_2__*,int,TYPE_2__*,int) ;
 TYPE_2__* RtlAllocateHeap (int ,int ,int) ;
 int RtlFreeHeap (int ,int ,TYPE_2__*) ;
 int RtlGetProcessHeap () ;
 int RtlZeroMemory (TYPE_2__*,int) ;
 int TRUE ;
 int free (TYPE_2__*) ;
 TYPE_2__* malloc (int) ;

__attribute__((used)) static BOOL is_ssd(HANDLE h) {
    ULONG aptelen;
    ATA_PASS_THROUGH_EX* apte;
    IO_STATUS_BLOCK iosb;
    NTSTATUS Status;
    IDENTIFY_DEVICE_DATA* idd;

    aptelen = sizeof(ATA_PASS_THROUGH_EX) + 512;

    apte = malloc(aptelen);

    RtlZeroMemory(apte, aptelen);




    apte->Length = sizeof(ATA_PASS_THROUGH_EX);
    apte->AtaFlags = ATA_FLAGS_DATA_IN;
    apte->DataTransferLength = aptelen - sizeof(ATA_PASS_THROUGH_EX);
    apte->TimeOutValue = 3;
    apte->DataBufferOffset = apte->Length;
    apte->CurrentTaskFile[6] = IDE_COMMAND_IDENTIFY;

    Status = NtDeviceIoControlFile(h, ((void*)0), ((void*)0), ((void*)0), &iosb, IOCTL_ATA_PASS_THROUGH, apte, aptelen, apte, aptelen);

    if (NT_SUCCESS(Status)) {
        idd = (IDENTIFY_DEVICE_DATA*)((uint8_t*)apte + sizeof(ATA_PASS_THROUGH_EX));

        if (idd->NominalMediaRotationRate == 1) {

            free(apte);



            return TRUE;
        }
    }


    free(apte);




    return FALSE;
}

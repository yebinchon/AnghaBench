
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_1__ ;


typedef int WCHAR ;
typedef int VolumeDeviceNameBuffer ;
struct TYPE_20__ {int Length; int* Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef int ULONG ;
typedef int PFILE_OBJECT ;
typedef int PDEVICE_OBJECT ;
typedef TYPE_1__* NTSTATUS ;


 int FALSE ;
 TYPE_1__* GetNextVolumeDevice (TYPE_1__*,int*,TYPE_1__*) ;
 TYPE_1__* IoGetDeviceObjectPointer (TYPE_1__*,int ,int *,int *) ;
 TYPE_1__* IoVolumeDeviceToDosName (int ,TYPE_1__*) ;
 int NT_SUCCESS (TYPE_1__*) ;
 int ObDereferenceObject (int ) ;
 int READ_CONTROL ;
 TYPE_1__ RTL_CONSTANT_STRING (char*) ;
 int RtlFreeUnicodeString (TYPE_1__*) ;
 int RtlInitEmptyUnicodeString (TYPE_1__*,int *,int) ;
 int RtlInitUnicodeString (TYPE_1__*,int *) ;
 int RtlPrefixUnicodeString (TYPE_1__*,TYPE_1__*,int ) ;
 TYPE_1__* STATUS_SUCCESS ;
 int ok (int,char*,...) ;
 int ok_eq_hex (TYPE_1__*,TYPE_1__*) ;
 int skip (int ,char*) ;
 int trace (char*,...) ;

__attribute__((used)) static
void
TestIoVolumeDeviceToDosName(void)
{
    NTSTATUS Status;
    ULONG VolumeNumber;
    WCHAR VolumeDeviceNameBuffer[32];
    UNICODE_STRING VolumeDeviceName;
    PFILE_OBJECT FileObject;
    PDEVICE_OBJECT DeviceObject;
    UNICODE_STRING DosName;
    UNICODE_STRING DosVolumePrefix = RTL_CONSTANT_STRING(L"\\\\?\\Volume");

    RtlInitEmptyUnicodeString(&VolumeDeviceName,
                              VolumeDeviceNameBuffer,
                              sizeof(VolumeDeviceNameBuffer));
    VolumeNumber = 0;
    Status = STATUS_SUCCESS;
    while (1)
    {
        Status = GetNextVolumeDevice(&VolumeDeviceName,
                                     &VolumeNumber,
                                     Status);
        if (!NT_SUCCESS(Status))
        {
            trace("GetNextVolumeDevice(0x%lx) failed with %lx\n",
                  VolumeNumber, Status);
            break;
        }

        RtlInitUnicodeString(&VolumeDeviceName, VolumeDeviceNameBuffer);
        Status = IoGetDeviceObjectPointer(&VolumeDeviceName,
                                          READ_CONTROL,
                                          &FileObject,
                                          &DeviceObject);
        if (!NT_SUCCESS(Status))
        {
            trace("IoGetDeviceObjectPointer(%wZ) failed with %lx\n",
                  &VolumeDeviceName, Status);
            continue;
        }

        Status = IoVolumeDeviceToDosName(DeviceObject, &DosName);
        ok_eq_hex(Status, STATUS_SUCCESS);
        if (!skip(NT_SUCCESS(Status), "No DOS name\n"))
        {
            trace("DOS name for %wZ is %wZ\n", &VolumeDeviceName, &DosName);
            if (DosName.Length == 2 * sizeof(WCHAR))
            {
                ok(DosName.Buffer[0] >= L'A' &&
                   DosName.Buffer[0] <= L'Z' &&
                   DosName.Buffer[1] == L':',
                   "Unexpected drive letter: %wZ\n", &DosName);
            }
            else
            {
                ok(RtlPrefixUnicodeString(&DosVolumePrefix, &DosName, FALSE),
                   "Unexpected volume path: %wZ\n", &DosName);
            }
            RtlFreeUnicodeString(&DosName);
        }
        ObDereferenceObject(FileObject);
        Status = STATUS_SUCCESS;
    }
    ok(VolumeNumber > 1, "No volumes found\n");
}

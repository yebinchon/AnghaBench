#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  VolumeDeviceNameBuffer ;
struct TYPE_20__ {int Length; int* Buffer; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  PFILE_OBJECT ;
typedef  int /*<<< orphan*/  PDEVICE_OBJECT ;
typedef  TYPE_1__* NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 TYPE_1__* FUNC0 (TYPE_1__*,int*,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  READ_CONTROL ; 
 TYPE_1__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 

__attribute__((used)) static
void
FUNC14(void)
{
    NTSTATUS Status;
    ULONG VolumeNumber;
    WCHAR VolumeDeviceNameBuffer[32];
    UNICODE_STRING VolumeDeviceName;
    PFILE_OBJECT FileObject;
    PDEVICE_OBJECT DeviceObject;
    UNICODE_STRING DosName;
    UNICODE_STRING DosVolumePrefix = FUNC5(L"\\\\?\\Volume");

    FUNC7(&VolumeDeviceName,
                              VolumeDeviceNameBuffer,
                              sizeof(VolumeDeviceNameBuffer));
    VolumeNumber = 0;
    Status = STATUS_SUCCESS;
    while (1)
    {
        Status = FUNC0(&VolumeDeviceName,
                                     &VolumeNumber,
                                     Status);
        if (!FUNC3(Status))
        {
            FUNC13("GetNextVolumeDevice(0x%lx) failed with %lx\n",
                  VolumeNumber, Status);
            break;
        }

        FUNC8(&VolumeDeviceName, VolumeDeviceNameBuffer);
        Status = FUNC1(&VolumeDeviceName,
                                          READ_CONTROL,
                                          &FileObject,
                                          &DeviceObject);
        if (!FUNC3(Status))
        {
            FUNC13("IoGetDeviceObjectPointer(%wZ) failed with %lx\n",
                  &VolumeDeviceName, Status);
            continue;
        }

        Status = FUNC2(DeviceObject, &DosName);
        FUNC11(Status, STATUS_SUCCESS);
        if (!FUNC12(FUNC3(Status), "No DOS name\n"))
        {
            FUNC13("DOS name for %wZ is %wZ\n", &VolumeDeviceName, &DosName);
            if (DosName.Length == 2 * sizeof(WCHAR))
            {
                FUNC10(DosName.Buffer[0] >= L'A' &&
                   DosName.Buffer[0] <= L'Z' &&
                   DosName.Buffer[1] == L':',
                   "Unexpected drive letter: %wZ\n", &DosName);
            }
            else
            {
                FUNC10(FUNC9(&DosVolumePrefix, &DosName, FALSE),
                   "Unexpected volume path: %wZ\n", &DosName);
            }
            FUNC6(&DosName);
        }
        FUNC4(FileObject);
        Status = STATUS_SUCCESS;
    }
    FUNC10(VolumeNumber > 1, "No volumes found\n");
}
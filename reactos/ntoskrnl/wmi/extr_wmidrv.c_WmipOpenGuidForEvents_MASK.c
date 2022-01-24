#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WMI_OPEN_GUID_FOR_EVENTS ;
typedef  int /*<<< orphan*/  WMIP_RESULT2 ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  int ULONG ;
struct TYPE_8__ {int /*<<< orphan*/  Handle; } ;
struct TYPE_7__ {int /*<<< orphan*/  DesiredAccess; int /*<<< orphan*/  ObjectAttributes; } ;
typedef  TYPE_1__* PWMI_OPEN_GUID_FOR_EVENTS ;
typedef  TYPE_2__* PWMIP_RESULT2 ;
typedef  TYPE_1__* PVOID ;
typedef  int* PULONG ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  KPROCESSOR_MODE ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  STATUS_UNSUCCESSFUL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__**) ; 

__attribute__((used)) static
NTSTATUS
FUNC6(
    PVOID Buffer,
    ULONG InputLength,
    PULONG OutputLength)
{
    PWMI_OPEN_GUID_FOR_EVENTS OpenGuidForEvents = Buffer;
    PWMIP_RESULT2 Result = (PWMIP_RESULT2)Buffer;
    OBJECT_ATTRIBUTES LocalObjectAttributes;
    UNICODE_STRING LocalObjectName;
    WCHAR LocalObjectNameBuffer[45 + 1];
    KPROCESSOR_MODE PreviousMode;
    HANDLE GuidObjectHandle;
    PVOID GuidObject;
    NTSTATUS Status;

    if ((InputLength != sizeof(WMI_OPEN_GUID_FOR_EVENTS)) ||
        (*OutputLength != sizeof(WMIP_RESULT2)))
    {
        return STATUS_UNSUCCESSFUL;
    }

    /* Capture object attributes */
    PreviousMode = FUNC1();
    Status = FUNC4(OpenGuidForEvents->ObjectAttributes,
                                             &LocalObjectAttributes,
                                             &LocalObjectName,
                                             LocalObjectNameBuffer,
                                             PreviousMode);
    if (!FUNC2(Status))
    {
        FUNC0("ProbeAndCaptureGuidObjectAttributes failed: 0x%lx\n", Status);
        return Status;
    }

    /* Open a new GUID object */
    Status = FUNC5(&LocalObjectAttributes,
                                      OpenGuidForEvents->DesiredAccess,
                                      PreviousMode,
                                      &GuidObjectHandle,
                                      &GuidObject);
    if (!FUNC2(Status))
    {
        FUNC0("WmipOpenGuidObjectByName failed: 0x%lx\n", Status);
        return Status;
    }

    Result->Handle = GuidObjectHandle;

    FUNC3(GuidObject);

    return STATUS_SUCCESS;
}
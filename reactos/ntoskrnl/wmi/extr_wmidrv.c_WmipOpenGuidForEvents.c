
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WMI_OPEN_GUID_FOR_EVENTS ;
typedef int WMIP_RESULT2 ;
typedef int WCHAR ;
typedef int UNICODE_STRING ;
typedef int ULONG ;
struct TYPE_8__ {int Handle; } ;
struct TYPE_7__ {int DesiredAccess; int ObjectAttributes; } ;
typedef TYPE_1__* PWMI_OPEN_GUID_FOR_EVENTS ;
typedef TYPE_2__* PWMIP_RESULT2 ;
typedef TYPE_1__* PVOID ;
typedef int* PULONG ;
typedef int OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef int KPROCESSOR_MODE ;
typedef int HANDLE ;


 int DPRINT1 (char*,int ) ;
 int ExGetPreviousMode () ;
 int NT_SUCCESS (int ) ;
 int ObDereferenceObject (TYPE_1__*) ;
 int STATUS_SUCCESS ;
 int STATUS_UNSUCCESSFUL ;
 int WmipCaptureGuidObjectAttributes (int ,int *,int *,int *,int ) ;
 int WmipOpenGuidObjectByName (int *,int ,int ,int *,TYPE_1__**) ;

__attribute__((used)) static
NTSTATUS
WmipOpenGuidForEvents(
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


    PreviousMode = ExGetPreviousMode();
    Status = WmipCaptureGuidObjectAttributes(OpenGuidForEvents->ObjectAttributes,
                                             &LocalObjectAttributes,
                                             &LocalObjectName,
                                             LocalObjectNameBuffer,
                                             PreviousMode);
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("ProbeAndCaptureGuidObjectAttributes failed: 0x%lx\n", Status);
        return Status;
    }


    Status = WmipOpenGuidObjectByName(&LocalObjectAttributes,
                                      OpenGuidForEvents->DesiredAccess,
                                      PreviousMode,
                                      &GuidObjectHandle,
                                      &GuidObject);
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("WmipOpenGuidObjectByName failed: 0x%lx\n", Status);
        return Status;
    }

    Result->Handle = GuidObjectHandle;

    ObDereferenceObject(GuidObject);

    return STATUS_SUCCESS;
}

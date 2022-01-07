
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_8__ {void* Flags; int * Parameters; void* RelativePathname; int PrefixNode; } ;
struct TYPE_7__ {scalar_t__ DeviceCount; scalar_t__ Num_STA; scalar_t__ Num_INI; TYPE_2__* EvaluateInfo; } ;
typedef int ACPI_STATUS ;
typedef int ACPI_HANDLE ;
typedef int ACPI_EVALUATE_INFO ;
typedef TYPE_1__ ACPI_DEVICE_WALK_INFO ;


 TYPE_2__* ACPI_ALLOCATE_ZEROED (int) ;
 int ACPI_DB_EXEC ;
 int ACPI_DB_INIT ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (TYPE_2__*) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 void* ACPI_IGNORE_RETURN_VALUE ;
 int ACPI_NO_ADDRESS_SPACE_INIT ;
 int ACPI_NO_DEVICE_INIT ;
 scalar_t__ ACPI_OSI_WIN_2000 ;
 int ACPI_ROOT_OBJECT ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AcpiEvInitializeOpRegions () ;
 scalar_t__ AcpiGbl_OsiData ;
 int AcpiGbl_RootNode ;
 int AcpiGbl_TruncateIoAddresses ;
 int AcpiGetHandle (int *,char*,int *) ;
 int AcpiNsEvaluate (TYPE_2__*) ;
 int AcpiNsFindIniMethods ;
 int AcpiNsInitOneDevice ;
 int AcpiNsWalkNamespace (int ,int ,int ,int ,int ,int *,TYPE_1__*,int *) ;
 int FALSE ;
 void* METHOD_NAME__INI ;
 int NsInitializeDevices ;
 int TRUE ;
 int memset (TYPE_2__*,int ,int) ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiNsInitializeDevices (
    UINT32 Flags)
{
    ACPI_STATUS Status = AE_OK;
    ACPI_DEVICE_WALK_INFO Info;
    ACPI_HANDLE Handle;


    ACPI_FUNCTION_TRACE (NsInitializeDevices);


    if (!(Flags & ACPI_NO_DEVICE_INIT))
    {
        ACPI_DEBUG_PRINT ((ACPI_DB_EXEC,
            "[Init] Initializing ACPI Devices\n"));



        Info.DeviceCount = 0;
        Info.Num_STA = 0;
        Info.Num_INI = 0;

        ACPI_DEBUG_PRINT_RAW ((ACPI_DB_INIT,
            "Initializing Device/Processor/Thermal objects "
            "and executing _INI/_STA methods:\n"));



        Status = AcpiNsWalkNamespace (ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
            ACPI_UINT32_MAX, FALSE, AcpiNsFindIniMethods, ((void*)0), &Info, ((void*)0));
        if (ACPI_FAILURE (Status))
        {
            goto ErrorExit;
        }



        Info.EvaluateInfo = ACPI_ALLOCATE_ZEROED (sizeof (ACPI_EVALUATE_INFO));
        if (!Info.EvaluateInfo)
        {
            Status = AE_NO_MEMORY;
            goto ErrorExit;
        }






        Info.EvaluateInfo->PrefixNode = AcpiGbl_RootNode;
        Info.EvaluateInfo->RelativePathname = METHOD_NAME__INI;
        Info.EvaluateInfo->Parameters = ((void*)0);
        Info.EvaluateInfo->Flags = ACPI_IGNORE_RETURN_VALUE;

        Status = AcpiNsEvaluate (Info.EvaluateInfo);
        if (ACPI_SUCCESS (Status))
        {
            Info.Num_INI++;
        }






        Status = AcpiGetHandle (((void*)0), "\\_SB", &Handle);
        if (ACPI_SUCCESS (Status))
        {
            memset (Info.EvaluateInfo, 0, sizeof (ACPI_EVALUATE_INFO));
            Info.EvaluateInfo->PrefixNode = Handle;
            Info.EvaluateInfo->RelativePathname = METHOD_NAME__INI;
            Info.EvaluateInfo->Parameters = ((void*)0);
            Info.EvaluateInfo->Flags = ACPI_IGNORE_RETURN_VALUE;

            Status = AcpiNsEvaluate (Info.EvaluateInfo);
            if (ACPI_SUCCESS (Status))
            {
                Info.Num_INI++;
            }
        }
    }
    if (!(Flags & ACPI_NO_ADDRESS_SPACE_INIT))
    {
        ACPI_DEBUG_PRINT ((ACPI_DB_EXEC,
            "[Init] Executing _REG OpRegion methods\n"));

        Status = AcpiEvInitializeOpRegions ();
        if (ACPI_FAILURE (Status))
        {
            goto ErrorExit;
        }
    }

    if (!(Flags & ACPI_NO_DEVICE_INIT))
    {


        Status = AcpiNsWalkNamespace (ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
            ACPI_UINT32_MAX, FALSE, AcpiNsInitOneDevice, ((void*)0), &Info, ((void*)0));






        if (AcpiGbl_OsiData >= ACPI_OSI_WIN_2000)
        {
            AcpiGbl_TruncateIoAddresses = TRUE;
        }

        ACPI_FREE (Info.EvaluateInfo);
        if (ACPI_FAILURE (Status))
        {
            goto ErrorExit;
        }

        ACPI_DEBUG_PRINT_RAW ((ACPI_DB_INIT,
            "    Executed %u _INI methods requiring %u _STA executions "
            "(examined %u objects)\n",
            Info.Num_INI, Info.Num_STA, Info.DeviceCount));
    }

    return_ACPI_STATUS (Status);


ErrorExit:
    ACPI_EXCEPTION ((AE_INFO, Status, "During device initialization"));
    return_ACPI_STATUS (Status);
}

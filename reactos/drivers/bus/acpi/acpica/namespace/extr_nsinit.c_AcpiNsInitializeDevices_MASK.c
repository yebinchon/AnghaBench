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
typedef  int UINT32 ;
struct TYPE_8__ {void* Flags; int /*<<< orphan*/ * Parameters; void* RelativePathname; int /*<<< orphan*/  PrefixNode; } ;
struct TYPE_7__ {scalar_t__ DeviceCount; scalar_t__ Num_STA; scalar_t__ Num_INI; TYPE_2__* EvaluateInfo; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;
typedef  int /*<<< orphan*/  ACPI_EVALUATE_INFO ;
typedef  TYPE_1__ ACPI_DEVICE_WALK_INFO ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int) ; 
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  ACPI_DB_INIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 void* ACPI_IGNORE_RETURN_VALUE ; 
 int ACPI_NO_ADDRESS_SPACE_INIT ; 
 int ACPI_NO_DEVICE_INIT ; 
 scalar_t__ ACPI_OSI_WIN_2000 ; 
 int /*<<< orphan*/  ACPI_ROOT_OBJECT ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_ANY ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ AcpiGbl_OsiData ; 
 int /*<<< orphan*/  AcpiGbl_RootNode ; 
 int /*<<< orphan*/  AcpiGbl_TruncateIoAddresses ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  AcpiNsFindIniMethods ; 
 int /*<<< orphan*/  AcpiNsInitOneDevice ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 void* METHOD_NAME__INI ; 
 int /*<<< orphan*/  NsInitializeDevices ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC14 (
    UINT32                  Flags)
{
    ACPI_STATUS             Status = AE_OK;
    ACPI_DEVICE_WALK_INFO   Info;
    ACPI_HANDLE             Handle;


    FUNC6 (NsInitializeDevices);


    if (!(Flags & ACPI_NO_DEVICE_INIT))
    {
        FUNC1 ((ACPI_DB_EXEC,
            "[Init] Initializing ACPI Devices\n"));

        /* Init counters */

        Info.DeviceCount = 0;
        Info.Num_STA = 0;
        Info.Num_INI = 0;

        FUNC2 ((ACPI_DB_INIT,
            "Initializing Device/Processor/Thermal objects "
            "and executing _INI/_STA methods:\n"));

        /* Tree analysis: find all subtrees that contain _INI methods */

        Status = FUNC11 (ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
            ACPI_UINT32_MAX, FALSE, AcpiNsFindIniMethods, NULL, &Info, NULL);
        if (FUNC4 (Status))
        {
            goto ErrorExit;
        }

        /* Allocate the evaluation information block */

        Info.EvaluateInfo = FUNC0 (sizeof (ACPI_EVALUATE_INFO));
        if (!Info.EvaluateInfo)
        {
            Status = AE_NO_MEMORY;
            goto ErrorExit;
        }

        /*
         * Execute the "global" _INI method that may appear at the root.
         * This support is provided for Windows compatibility (Vista+) and
         * is not part of the ACPI specification.
         */
        Info.EvaluateInfo->PrefixNode = AcpiGbl_RootNode;
        Info.EvaluateInfo->RelativePathname = METHOD_NAME__INI;
        Info.EvaluateInfo->Parameters = NULL;
        Info.EvaluateInfo->Flags = ACPI_IGNORE_RETURN_VALUE;

        Status = FUNC10 (Info.EvaluateInfo);
        if (FUNC7 (Status))
        {
            Info.Num_INI++;
        }

        /*
         * Execute \_SB._INI.
         * There appears to be a strict order requirement for \_SB._INI,
         * which should be evaluated before any _REG evaluations.
         */
        Status = FUNC9 (NULL, "\\_SB", &Handle);
        if (FUNC7 (Status))
        {
            FUNC12 (Info.EvaluateInfo, 0, sizeof (ACPI_EVALUATE_INFO));
            Info.EvaluateInfo->PrefixNode = Handle;
            Info.EvaluateInfo->RelativePathname = METHOD_NAME__INI;
            Info.EvaluateInfo->Parameters = NULL;
            Info.EvaluateInfo->Flags = ACPI_IGNORE_RETURN_VALUE;

            Status = FUNC10 (Info.EvaluateInfo);
            if (FUNC7 (Status))
            {
                Info.Num_INI++;
            }
        }
    }

    /*
     * Run all _REG methods
     *
     * Note: Any objects accessed by the _REG methods will be automatically
     * initialized, even if they contain executable AML (see the call to
     * AcpiNsInitializeObjects below).
     *
     * Note: According to the ACPI specification, we actually needn't execute
     * _REG for SystemMemory/SystemIo operation regions, but for PCI_Config
     * operation regions, it is required to evaluate _REG for those on a PCI
     * root bus that doesn't contain _BBN object. So this code is kept here
     * in order not to break things.
     */
    if (!(Flags & ACPI_NO_ADDRESS_SPACE_INIT))
    {
        FUNC1 ((ACPI_DB_EXEC,
            "[Init] Executing _REG OpRegion methods\n"));

        Status = FUNC8 ();
        if (FUNC4 (Status))
        {
            goto ErrorExit;
        }
    }

    if (!(Flags & ACPI_NO_DEVICE_INIT))
    {
        /* Walk namespace to execute all _INIs on present devices */

        Status = FUNC11 (ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
            ACPI_UINT32_MAX, FALSE, AcpiNsInitOneDevice, NULL, &Info, NULL);

        /*
         * Any _OSI requests should be completed by now. If the BIOS has
         * requested any Windows OSI strings, we will always truncate
         * I/O addresses to 16 bits -- for Windows compatibility.
         */
        if (AcpiGbl_OsiData >= ACPI_OSI_WIN_2000)
        {
            AcpiGbl_TruncateIoAddresses = TRUE;
        }

        FUNC5 (Info.EvaluateInfo);
        if (FUNC4 (Status))
        {
            goto ErrorExit;
        }

        FUNC2 ((ACPI_DB_INIT,
            "    Executed %u _INI methods requiring %u _STA executions "
            "(examined %u objects)\n",
            Info.Num_INI, Info.Num_STA, Info.DeviceCount));
    }

    FUNC13 (Status);


ErrorExit:
    FUNC3 ((AE_INFO, Status, "During device initialization"));
    FUNC13 (Status);
}
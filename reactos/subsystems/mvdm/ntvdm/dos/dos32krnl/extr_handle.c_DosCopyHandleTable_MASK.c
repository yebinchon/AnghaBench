#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  size_t UINT ;
struct TYPE_17__ {scalar_t__ CurrentPsp; } ;
struct TYPE_16__ {int /*<<< orphan*/  ActiveCon; } ;
struct TYPE_12__ {int /*<<< orphan*/  Length; int /*<<< orphan*/  Buffer; } ;
struct TYPE_15__ {int DeviceAttributes; int /*<<< orphan*/  (* OpenRoutine ) (TYPE_4__*) ;TYPE_1__ Name; } ;
struct TYPE_14__ {int DeviceInfo; int /*<<< orphan*/  RefCount; int /*<<< orphan*/  Win32Handle; int /*<<< orphan*/  FileName; int /*<<< orphan*/  DevicePointer; } ;
struct TYPE_13__ {int /*<<< orphan*/  HandleTablePtr; } ;
typedef  TYPE_2__* PDOS_PSP ;
typedef  TYPE_3__* PDOS_FILE_DESCRIPTOR ;
typedef  TYPE_4__* PDOS_DEVICE_NODE ;
typedef  int* LPBYTE ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t DEFAULT_JFT_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FILE_INFO_DEVICE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,char) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int) ; 
 TYPE_2__* FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  STD_ERROR_HANDLE ; 
 int /*<<< orphan*/  STD_INPUT_HANDLE ; 
 int /*<<< orphan*/  STD_OUTPUT_HANDLE ; 
 scalar_t__ SYSTEM_PSP ; 
 TYPE_7__* Sda ; 
 TYPE_6__* SysVars ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 

VOID FUNC15(LPBYTE DestinationTable)
{
    UINT i;
    PDOS_PSP PspBlock;
    LPBYTE SourceTable;
    PDOS_FILE_DESCRIPTOR Descriptor;

    /* Clear the table first */
    for (i = 0; i < DEFAULT_JFT_SIZE; i++) DestinationTable[i] = 0xFF;

    /* Check if this is the initial process */
    if (Sda->CurrentPsp == SYSTEM_PSP)
    {
        BYTE DescriptorId;
        HANDLE StandardHandles[3];

        /* Get the native standard handles */
        StandardHandles[0] = FUNC8(STD_INPUT_HANDLE);
        StandardHandles[1] = FUNC8(STD_OUTPUT_HANDLE);
        StandardHandles[2] = FUNC8(STD_ERROR_HANDLE);

        for (i = 0; i < 3; i++)
        {
            /* Find the corresponding SFT entry */
            if (FUNC9(StandardHandles[i]))
            {
                DescriptorId = FUNC2(SysVars->ActiveCon);
            }
            else
            {
                DescriptorId = FUNC4(StandardHandles[i]);
            }

            if (DescriptorId != 0xFF)
            {
                Descriptor = FUNC6(DescriptorId);
            }
            else
            {
                /* Create a new SFT entry for it */
                DescriptorId = FUNC3();
                if (DescriptorId == 0xFF)
                {
                    FUNC1("Cannot create standard handle %d, the SFT is full!\n", i);
                    continue;
                }

                Descriptor = FUNC6(DescriptorId);
                FUNC0(Descriptor != NULL);
                FUNC12(Descriptor, sizeof(*Descriptor));

                if (FUNC9(StandardHandles[i]))
                {
                    PDOS_DEVICE_NODE Node = FUNC5(SysVars->ActiveCon);

                    Descriptor->DeviceInfo = Node->DeviceAttributes | FILE_INFO_DEVICE;
                    Descriptor->DevicePointer = SysVars->ActiveCon;
                    FUNC11(Descriptor->FileName, sizeof(Descriptor->FileName), ' ');
                    FUNC10(Descriptor->FileName, Node->Name.Buffer, Node->Name.Length);

                    /* Call the open routine */
                    if (Node->OpenRoutine) Node->OpenRoutine(Node);
                }
                else
                {
                    Descriptor->Win32Handle = StandardHandles[i];
                }
            }

            Descriptor->RefCount++;
            DestinationTable[i] = DescriptorId;
        }
    }
    else
    {
        /* Get the parent PSP block and handle table */
        PspBlock = FUNC13(Sda->CurrentPsp);
        SourceTable = (LPBYTE)FUNC7(PspBlock->HandleTablePtr);

        /* Copy the first 20 handles into the new table */
        for (i = 0; i < DEFAULT_JFT_SIZE; i++)
        {
            Descriptor = FUNC6(SourceTable[i]);
            DestinationTable[i] = SourceTable[i];

            /* Increase the reference count */
            Descriptor->RefCount++;
        }
    }
}
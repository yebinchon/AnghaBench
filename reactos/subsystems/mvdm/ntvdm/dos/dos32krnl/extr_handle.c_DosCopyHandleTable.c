
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int VOID ;
typedef size_t UINT ;
struct TYPE_17__ {scalar_t__ CurrentPsp; } ;
struct TYPE_16__ {int ActiveCon; } ;
struct TYPE_12__ {int Length; int Buffer; } ;
struct TYPE_15__ {int DeviceAttributes; int (* OpenRoutine ) (TYPE_4__*) ;TYPE_1__ Name; } ;
struct TYPE_14__ {int DeviceInfo; int RefCount; int Win32Handle; int FileName; int DevicePointer; } ;
struct TYPE_13__ {int HandleTablePtr; } ;
typedef TYPE_2__* PDOS_PSP ;
typedef TYPE_3__* PDOS_FILE_DESCRIPTOR ;
typedef TYPE_4__* PDOS_DEVICE_NODE ;
typedef int* LPBYTE ;
typedef int HANDLE ;
typedef int BYTE ;


 int ASSERT (int ) ;
 size_t DEFAULT_JFT_SIZE ;
 int DPRINT1 (char*,size_t) ;
 int DosFindDeviceDescriptor (int ) ;
 int DosFindFreeDescriptor () ;
 int DosFindWin32Descriptor (int ) ;
 TYPE_4__* DosGetDriverNode (int ) ;
 TYPE_3__* DosGetFileDescriptor (int) ;
 scalar_t__ FAR_POINTER (int ) ;
 int FILE_INFO_DEVICE ;
 int GetStdHandle (int ) ;
 scalar_t__ IsConsoleHandle (int ) ;
 int RtlCopyMemory (int ,int ,int ) ;
 int RtlFillMemory (int ,int,char) ;
 int RtlZeroMemory (TYPE_3__*,int) ;
 TYPE_2__* SEGMENT_TO_PSP (scalar_t__) ;
 int STD_ERROR_HANDLE ;
 int STD_INPUT_HANDLE ;
 int STD_OUTPUT_HANDLE ;
 scalar_t__ SYSTEM_PSP ;
 TYPE_7__* Sda ;
 TYPE_6__* SysVars ;
 int stub1 (TYPE_4__*) ;

VOID DosCopyHandleTable(LPBYTE DestinationTable)
{
    UINT i;
    PDOS_PSP PspBlock;
    LPBYTE SourceTable;
    PDOS_FILE_DESCRIPTOR Descriptor;


    for (i = 0; i < DEFAULT_JFT_SIZE; i++) DestinationTable[i] = 0xFF;


    if (Sda->CurrentPsp == SYSTEM_PSP)
    {
        BYTE DescriptorId;
        HANDLE StandardHandles[3];


        StandardHandles[0] = GetStdHandle(STD_INPUT_HANDLE);
        StandardHandles[1] = GetStdHandle(STD_OUTPUT_HANDLE);
        StandardHandles[2] = GetStdHandle(STD_ERROR_HANDLE);

        for (i = 0; i < 3; i++)
        {

            if (IsConsoleHandle(StandardHandles[i]))
            {
                DescriptorId = DosFindDeviceDescriptor(SysVars->ActiveCon);
            }
            else
            {
                DescriptorId = DosFindWin32Descriptor(StandardHandles[i]);
            }

            if (DescriptorId != 0xFF)
            {
                Descriptor = DosGetFileDescriptor(DescriptorId);
            }
            else
            {

                DescriptorId = DosFindFreeDescriptor();
                if (DescriptorId == 0xFF)
                {
                    DPRINT1("Cannot create standard handle %d, the SFT is full!\n", i);
                    continue;
                }

                Descriptor = DosGetFileDescriptor(DescriptorId);
                ASSERT(Descriptor != ((void*)0));
                RtlZeroMemory(Descriptor, sizeof(*Descriptor));

                if (IsConsoleHandle(StandardHandles[i]))
                {
                    PDOS_DEVICE_NODE Node = DosGetDriverNode(SysVars->ActiveCon);

                    Descriptor->DeviceInfo = Node->DeviceAttributes | FILE_INFO_DEVICE;
                    Descriptor->DevicePointer = SysVars->ActiveCon;
                    RtlFillMemory(Descriptor->FileName, sizeof(Descriptor->FileName), ' ');
                    RtlCopyMemory(Descriptor->FileName, Node->Name.Buffer, Node->Name.Length);


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

        PspBlock = SEGMENT_TO_PSP(Sda->CurrentPsp);
        SourceTable = (LPBYTE)FAR_POINTER(PspBlock->HandleTablePtr);


        for (i = 0; i < DEFAULT_JFT_SIZE; i++)
        {
            Descriptor = DosGetFileDescriptor(SourceTable[i]);
            DestinationTable[i] = SourceTable[i];


            Descriptor->RefCount++;
        }
    }
}

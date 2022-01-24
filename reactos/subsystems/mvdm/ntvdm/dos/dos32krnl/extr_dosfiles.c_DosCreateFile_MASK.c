#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WORD ;
struct TYPE_13__ {int /*<<< orphan*/  CurrentPsp; } ;
struct TYPE_10__ {int /*<<< orphan*/  Length; int /*<<< orphan*/  Buffer; } ;
struct TYPE_12__ {int DeviceAttributes; TYPE_1__ Name; int /*<<< orphan*/  Driver; int /*<<< orphan*/  (* OpenRoutine ) (TYPE_3__*) ;} ;
struct TYPE_11__ {int DeviceInfo; int /*<<< orphan*/  OwnerPsp; scalar_t__ Win32Handle; int /*<<< orphan*/  Size; int /*<<< orphan*/  Attributes; int /*<<< orphan*/  FileName; int /*<<< orphan*/  DevicePointer; } ;
typedef  TYPE_2__* PDOS_FILE_DESCRIPTOR ;
typedef  TYPE_3__* PDOS_DEVICE_NODE ;
typedef  scalar_t__* LPWORD ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 () ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ ERROR_TOO_MANY_OPEN_FILES ; 
 int FILE_INFO_DEVICE ; 
 int FILE_SHARE_DELETE ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ INVALID_DOS_HANDLE ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,char) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int) ; 
 TYPE_6__* Sda ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 

WORD FUNC16(LPWORD Handle,
                   LPCSTR FilePath,
                   DWORD CreationDisposition,
                   WORD Attributes)
{
    HANDLE FileHandle;
    PDOS_DEVICE_NODE Node;
    WORD DosHandle;
    BYTE DescriptorId;
    PDOS_FILE_DESCRIPTOR Descriptor;

    FUNC2("DosCreateFile: FilePath \"%s\", CreationDisposition 0x%04X, Attributes 0x%04X\n",
           FilePath, CreationDisposition, Attributes);

    Node = FUNC4(FilePath);
    if (Node != NULL)
    {
        if (Node->OpenRoutine) Node->OpenRoutine(Node);
    }
    else
    {
        /* Create the file */
        FileHandle = FUNC1(FilePath,
                                 GENERIC_READ | GENERIC_WRITE,
                                 FILE_SHARE_READ | FILE_SHARE_WRITE | FILE_SHARE_DELETE,
                                 NULL,
                                 CreationDisposition,
                                 Attributes,
                                 NULL);
        if (FileHandle == INVALID_HANDLE_VALUE)
        {
            /* Return the error code */
            return (WORD)FUNC9();
        }
    }

    DescriptorId = FUNC3();
    if (DescriptorId == 0xFF)
    {
        /* Close the file and return the error code */
        FUNC0(FileHandle);
        return ERROR_TOO_MANY_OPEN_FILES;
    }

    /* Set up the new descriptor */
    Descriptor = FUNC5(DescriptorId);
    FUNC13(Descriptor, sizeof(*Descriptor));
    FUNC12(Descriptor->FileName, sizeof(Descriptor->FileName), ' ');

    if (Node != NULL)
    {
        Descriptor->DevicePointer = Node->Driver;
        Descriptor->DeviceInfo = Node->DeviceAttributes | FILE_INFO_DEVICE;
        FUNC11(Descriptor->FileName, Node->Name.Buffer, Node->Name.Length);
    }
    else
    {
        Descriptor->Attributes = FUNC10(FUNC7(FilePath));
        Descriptor->Size = FUNC8(FileHandle, NULL);
        Descriptor->Win32Handle = FileHandle;
        FUNC14(FilePath, Descriptor);
    }

    Descriptor->OwnerPsp = Sda->CurrentPsp;

    /* Open the DOS handle */
    DosHandle = FUNC6(DescriptorId);
    if (DosHandle == INVALID_DOS_HANDLE)
    {
        /* Close the file and return the error code */
        FUNC0(FileHandle);
        return ERROR_TOO_MANY_OPEN_FILES;
    }

    /* It was successful */
    *Handle = DosHandle;
    return ERROR_SUCCESS;
}
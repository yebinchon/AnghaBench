#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WORD ;
struct TYPE_16__ {int /*<<< orphan*/  CurrentPsp; } ;
struct TYPE_12__ {int /*<<< orphan*/  Length; int /*<<< orphan*/  Buffer; } ;
struct TYPE_15__ {int DeviceAttributes; TYPE_1__ Name; int /*<<< orphan*/  Driver; int /*<<< orphan*/  (* OpenRoutine ) (TYPE_4__*) ;} ;
struct TYPE_14__ {int DeviceInfo; int OpenMode; int /*<<< orphan*/  OwnerPsp; scalar_t__ Win32Handle; int /*<<< orphan*/  Size; int /*<<< orphan*/  Attributes; int /*<<< orphan*/  FileName; int /*<<< orphan*/  DevicePointer; } ;
struct TYPE_13__ {int nLength; int bInheritHandle; int /*<<< orphan*/ * lpSecurityDescriptor; } ;
typedef  int /*<<< orphan*/  SecurityAttributes ;
typedef  TYPE_2__ SECURITY_ATTRIBUTES ;
typedef  TYPE_3__* PDOS_FILE_DESCRIPTOR ;
typedef  TYPE_4__* PDOS_DEVICE_NODE ;
typedef  scalar_t__* LPWORD ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  int BYTE ;
typedef  int BOOL ;
typedef  int ACCESS_MASK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 () ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ ERROR_TOO_MANY_OPEN_FILES ; 
 int FALSE ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
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
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,char) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int) ; 
 TYPE_7__* Sda ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 

WORD FUNC16(LPWORD Handle,
                 LPCSTR FilePath,
                 BYTE AccessShareModes)
{
    HANDLE FileHandle = NULL;
    PDOS_DEVICE_NODE Node;
    WORD DosHandle;
    BYTE DescriptorId;
    PDOS_FILE_DESCRIPTOR Descriptor;

    FUNC2("DosOpenFile: FilePath \"%s\", AccessShareModes 0x%04X\n",
           FilePath, AccessShareModes);

    //
    // The article about OpenFile API: http://msdn.microsoft.com/en-us/library/windows/desktop/aa365430(v=vs.85).aspx
    // explains what those AccessShareModes are (see the uStyle flag).
    //

    Node = FUNC4(FilePath);
    if (Node != NULL)
    {
        if (Node->OpenRoutine) Node->OpenRoutine(Node);
    }
    else
    {
        ACCESS_MASK AccessMode = 0;
        DWORD ShareMode = 0;
        BOOL InheritableFile = FALSE;
        SECURITY_ATTRIBUTES SecurityAttributes;

        /* Parse the access mode */
        switch (AccessShareModes & 0x03)
        {
            /* Read-only */
            case 0:
                AccessMode = GENERIC_READ;
                break;

            /* Write only */
            case 1:
                AccessMode = GENERIC_WRITE;
                break;

            /* Read and write */
            case 2:
                AccessMode = GENERIC_READ | GENERIC_WRITE;
                break;

            /* Invalid */
            default:
                return ERROR_INVALID_PARAMETER;
        }

        /* Parse the share mode */
        switch ((AccessShareModes >> 4) & 0x07)
        {
            /* Compatibility mode */
            case 0:
                ShareMode = FILE_SHARE_READ | FILE_SHARE_WRITE | FILE_SHARE_DELETE;
                break;

            /* No sharing "DenyAll" */
            case 1:
                ShareMode = 0;
                break;

            /* No write share "DenyWrite" */
            case 2:
                ShareMode = FILE_SHARE_READ;
                break;

            /* No read share "DenyRead" */
            case 3:
                ShareMode = FILE_SHARE_WRITE;
                break;

            /* Full share "DenyNone" */
            case 4:
                ShareMode = FILE_SHARE_READ | FILE_SHARE_WRITE;
                break;

            /* Invalid */
            default:
                return ERROR_INVALID_PARAMETER;
        }

        /* Check for inheritance */
        InheritableFile = ((AccessShareModes & 0x80) == 0);

        /* Assign default security attributes to the file, and set the inheritance flag */
        SecurityAttributes.nLength = sizeof(SecurityAttributes);
        SecurityAttributes.lpSecurityDescriptor = NULL;
        SecurityAttributes.bInheritHandle = InheritableFile;

        /* Open the file */
        FileHandle = FUNC1(FilePath,
                                 AccessMode,
                                 ShareMode,
                                 &SecurityAttributes,
                                 OPEN_EXISTING,
                                 FILE_ATTRIBUTE_NORMAL,
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
        Descriptor->OpenMode = AccessShareModes;
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

typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ WORD ;
struct TYPE_16__ {int CurrentPsp; } ;
struct TYPE_12__ {int Length; int Buffer; } ;
struct TYPE_15__ {int DeviceAttributes; TYPE_1__ Name; int Driver; int (* OpenRoutine ) (TYPE_4__*) ;} ;
struct TYPE_14__ {int DeviceInfo; int OpenMode; int OwnerPsp; scalar_t__ Win32Handle; int Size; int Attributes; int FileName; int DevicePointer; } ;
struct TYPE_13__ {int nLength; int bInheritHandle; int * lpSecurityDescriptor; } ;
typedef int SecurityAttributes ;
typedef TYPE_2__ SECURITY_ATTRIBUTES ;
typedef TYPE_3__* PDOS_FILE_DESCRIPTOR ;
typedef TYPE_4__* PDOS_DEVICE_NODE ;
typedef scalar_t__* LPWORD ;
typedef int LPCSTR ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;
typedef int ACCESS_MASK ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (int ,int,int,TYPE_2__*,int ,int ,int *) ;
 int DPRINT (char*,int ,int) ;
 int DosFindFreeDescriptor () ;
 TYPE_4__* DosGetDevice (int ) ;
 TYPE_3__* DosGetFileDescriptor (int) ;
 scalar_t__ DosOpenHandle (int) ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ ERROR_TOO_MANY_OPEN_FILES ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_INFO_DEVICE ;
 int FILE_SHARE_DELETE ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int GetFileAttributesA (int ) ;
 int GetFileSize (scalar_t__,int *) ;
 int GetLastError () ;
 scalar_t__ INVALID_DOS_HANDLE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int LOBYTE (int ) ;
 int OPEN_EXISTING ;
 int RtlCopyMemory (int ,int ,int ) ;
 int RtlFillMemory (int ,int,char) ;
 int RtlZeroMemory (TYPE_3__*,int) ;
 TYPE_7__* Sda ;
 int StoreNameInSft (int ,TYPE_3__*) ;
 int stub1 (TYPE_4__*) ;

WORD DosOpenFile(LPWORD Handle,
                 LPCSTR FilePath,
                 BYTE AccessShareModes)
{
    HANDLE FileHandle = ((void*)0);
    PDOS_DEVICE_NODE Node;
    WORD DosHandle;
    BYTE DescriptorId;
    PDOS_FILE_DESCRIPTOR Descriptor;

    DPRINT("DosOpenFile: FilePath \"%s\", AccessShareModes 0x%04X\n",
           FilePath, AccessShareModes);






    Node = DosGetDevice(FilePath);
    if (Node != ((void*)0))
    {
        if (Node->OpenRoutine) Node->OpenRoutine(Node);
    }
    else
    {
        ACCESS_MASK AccessMode = 0;
        DWORD ShareMode = 0;
        BOOL InheritableFile = FALSE;
        SECURITY_ATTRIBUTES SecurityAttributes;


        switch (AccessShareModes & 0x03)
        {

            case 0:
                AccessMode = GENERIC_READ;
                break;


            case 1:
                AccessMode = GENERIC_WRITE;
                break;


            case 2:
                AccessMode = GENERIC_READ | GENERIC_WRITE;
                break;


            default:
                return ERROR_INVALID_PARAMETER;
        }


        switch ((AccessShareModes >> 4) & 0x07)
        {

            case 0:
                ShareMode = FILE_SHARE_READ | FILE_SHARE_WRITE | FILE_SHARE_DELETE;
                break;


            case 1:
                ShareMode = 0;
                break;


            case 2:
                ShareMode = FILE_SHARE_READ;
                break;


            case 3:
                ShareMode = FILE_SHARE_WRITE;
                break;


            case 4:
                ShareMode = FILE_SHARE_READ | FILE_SHARE_WRITE;
                break;


            default:
                return ERROR_INVALID_PARAMETER;
        }


        InheritableFile = ((AccessShareModes & 0x80) == 0);


        SecurityAttributes.nLength = sizeof(SecurityAttributes);
        SecurityAttributes.lpSecurityDescriptor = ((void*)0);
        SecurityAttributes.bInheritHandle = InheritableFile;


        FileHandle = CreateFileA(FilePath,
                                 AccessMode,
                                 ShareMode,
                                 &SecurityAttributes,
                                 OPEN_EXISTING,
                                 FILE_ATTRIBUTE_NORMAL,
                                 ((void*)0));
        if (FileHandle == INVALID_HANDLE_VALUE)
        {

            return (WORD)GetLastError();
        }
    }

    DescriptorId = DosFindFreeDescriptor();
    if (DescriptorId == 0xFF)
    {

        CloseHandle(FileHandle);
        return ERROR_TOO_MANY_OPEN_FILES;
    }


    Descriptor = DosGetFileDescriptor(DescriptorId);
    RtlZeroMemory(Descriptor, sizeof(*Descriptor));
    RtlFillMemory(Descriptor->FileName, sizeof(Descriptor->FileName), ' ');

    if (Node != ((void*)0))
    {
        Descriptor->DevicePointer = Node->Driver;
        Descriptor->DeviceInfo = Node->DeviceAttributes | FILE_INFO_DEVICE;
        RtlCopyMemory(Descriptor->FileName, Node->Name.Buffer, Node->Name.Length);
    }
    else
    {
        Descriptor->OpenMode = AccessShareModes;
        Descriptor->Attributes = LOBYTE(GetFileAttributesA(FilePath));
        Descriptor->Size = GetFileSize(FileHandle, ((void*)0));
        Descriptor->Win32Handle = FileHandle;
        StoreNameInSft(FilePath, Descriptor);
    }

    Descriptor->OwnerPsp = Sda->CurrentPsp;


    DosHandle = DosOpenHandle(DescriptorId);
    if (DosHandle == INVALID_DOS_HANDLE)
    {

        CloseHandle(FileHandle);
        return ERROR_TOO_MANY_OPEN_FILES;
    }


    *Handle = DosHandle;
    return ERROR_SUCCESS;
}

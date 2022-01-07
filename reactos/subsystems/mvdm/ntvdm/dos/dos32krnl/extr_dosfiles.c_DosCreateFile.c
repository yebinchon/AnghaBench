
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ WORD ;
struct TYPE_13__ {int CurrentPsp; } ;
struct TYPE_10__ {int Length; int Buffer; } ;
struct TYPE_12__ {int DeviceAttributes; TYPE_1__ Name; int Driver; int (* OpenRoutine ) (TYPE_3__*) ;} ;
struct TYPE_11__ {int DeviceInfo; int OwnerPsp; scalar_t__ Win32Handle; int Size; int Attributes; int FileName; int DevicePointer; } ;
typedef TYPE_2__* PDOS_FILE_DESCRIPTOR ;
typedef TYPE_3__* PDOS_DEVICE_NODE ;
typedef scalar_t__* LPWORD ;
typedef int LPCSTR ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BYTE ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (int ,int,int,int *,int ,scalar_t__,int *) ;
 int DPRINT (char*,int ,int ,scalar_t__) ;
 int DosFindFreeDescriptor () ;
 TYPE_3__* DosGetDevice (int ) ;
 TYPE_2__* DosGetFileDescriptor (int) ;
 scalar_t__ DosOpenHandle (int) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ ERROR_TOO_MANY_OPEN_FILES ;
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
 int RtlCopyMemory (int ,int ,int ) ;
 int RtlFillMemory (int ,int,char) ;
 int RtlZeroMemory (TYPE_2__*,int) ;
 TYPE_6__* Sda ;
 int StoreNameInSft (int ,TYPE_2__*) ;
 int stub1 (TYPE_3__*) ;

WORD DosCreateFile(LPWORD Handle,
                   LPCSTR FilePath,
                   DWORD CreationDisposition,
                   WORD Attributes)
{
    HANDLE FileHandle;
    PDOS_DEVICE_NODE Node;
    WORD DosHandle;
    BYTE DescriptorId;
    PDOS_FILE_DESCRIPTOR Descriptor;

    DPRINT("DosCreateFile: FilePath \"%s\", CreationDisposition 0x%04X, Attributes 0x%04X\n",
           FilePath, CreationDisposition, Attributes);

    Node = DosGetDevice(FilePath);
    if (Node != ((void*)0))
    {
        if (Node->OpenRoutine) Node->OpenRoutine(Node);
    }
    else
    {

        FileHandle = CreateFileA(FilePath,
                                 GENERIC_READ | GENERIC_WRITE,
                                 FILE_SHARE_READ | FILE_SHARE_WRITE | FILE_SHARE_DELETE,
                                 ((void*)0),
                                 CreationDisposition,
                                 Attributes,
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

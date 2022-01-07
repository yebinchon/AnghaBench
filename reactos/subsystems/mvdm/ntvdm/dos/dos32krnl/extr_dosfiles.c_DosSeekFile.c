
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ WORD ;
struct TYPE_3__ {int DeviceInfo; scalar_t__ Position; int Win32Handle; } ;
typedef TYPE_1__* PDOS_FILE_DESCRIPTOR ;
typedef scalar_t__* LPDWORD ;
typedef int LONG ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;


 int DPRINT (char*,scalar_t__,int ,int ) ;
 TYPE_1__* DosGetHandleFileDescriptor (scalar_t__) ;
 scalar_t__ ERROR_INVALID_FUNCTION ;
 scalar_t__ ERROR_INVALID_HANDLE ;
 scalar_t__ ERROR_SUCCESS ;
 int FILE_BEGIN ;
 int FILE_CURRENT ;
 int FILE_END ;
 int FILE_INFO_DEVICE ;
 scalar_t__ GetLastError () ;
 scalar_t__ INVALID_SET_FILE_POINTER ;
 scalar_t__ SetFilePointer (int ,int ,int *,int ) ;

WORD DosSeekFile(WORD FileHandle,
                 LONG Offset,
                 BYTE Origin,
                 LPDWORD NewOffset)
{
    WORD Result = ERROR_SUCCESS;
    DWORD FilePointer;
    PDOS_FILE_DESCRIPTOR Descriptor = DosGetHandleFileDescriptor(FileHandle);

    DPRINT("DosSeekFile: FileHandle 0x%04X, Offset 0x%08X, Origin 0x%02X\n",
           FileHandle, Offset, Origin);

    if (Descriptor == ((void*)0))
    {

        return ERROR_INVALID_HANDLE;
    }

    if (Descriptor->DeviceInfo & FILE_INFO_DEVICE)
    {

        return ERROR_SUCCESS;
    }


    if (Origin != FILE_BEGIN && Origin != FILE_CURRENT && Origin != FILE_END)
    {
        return ERROR_INVALID_FUNCTION;
    }

    FilePointer = SetFilePointer(Descriptor->Win32Handle, Offset, ((void*)0), Origin);


    if (FilePointer == INVALID_SET_FILE_POINTER)
    {

        Result = (WORD)GetLastError();
    }

    if (Result != ERROR_SUCCESS)
    {

        return Result;
    }


    Descriptor->Position = FilePointer;


    if (NewOffset) *NewOffset = FilePointer;


    return ERROR_SUCCESS;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_7__ {int (* WriteRoutine ) (TYPE_2__*,scalar_t__,int*) ;} ;
struct TYPE_6__ {int DeviceInfo; scalar_t__ Position; scalar_t__ Size; int Win32Handle; int DevicePointer; } ;
typedef int StaticBuffer ;
typedef int * PVOID ;
typedef TYPE_1__* PDOS_FILE_DESCRIPTOR ;
typedef TYPE_2__* PDOS_DEVICE_NODE ;
typedef int* LPWORD ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;


 int ASSERT (int ) ;
 int DPRINT (char*,int,int) ;
 TYPE_2__* DosGetDriverNode (int ) ;
 TYPE_1__* DosGetHandleFileDescriptor (int) ;
 int ERROR_INVALID_FUNCTION ;
 int ERROR_INVALID_HANDLE ;
 int ERROR_SUCCESS ;
 int EmulatorContext ;
 int EmulatorReadMemory (int *,int ,int *,int) ;
 int FILE_INFO_DEVICE ;
 scalar_t__ GetLastError () ;
 int HIWORD (scalar_t__) ;
 int LOWORD (scalar_t__) ;
 int * RtlAllocateHeap (int ,int ,int) ;
 int RtlFreeHeap (int ,int ,int *) ;
 int RtlGetProcessHeap () ;
 int SetEndOfFile (int ) ;
 int TO_LINEAR (int ,int) ;
 scalar_t__ WriteFile (int ,int *,int,scalar_t__*,int *) ;
 int stub1 (TYPE_2__*,scalar_t__,int*) ;

WORD DosWriteFile(WORD FileHandle,
                  DWORD Buffer,
                  WORD Count,
                  LPWORD BytesWritten)
{
    WORD Result = ERROR_SUCCESS;
    PDOS_FILE_DESCRIPTOR Descriptor = DosGetHandleFileDescriptor(FileHandle);
    BYTE StaticBuffer[8192];

    DPRINT("DosWriteFile: FileHandle 0x%04X, Count 0x%04X\n", FileHandle, Count);

    if (Descriptor == ((void*)0))
    {

        return ERROR_INVALID_HANDLE;
    }

    if (Descriptor->DeviceInfo & FILE_INFO_DEVICE)
    {
        PDOS_DEVICE_NODE Node = DosGetDriverNode(Descriptor->DevicePointer);
        if (!Node->WriteRoutine) return ERROR_INVALID_FUNCTION;


        Node->WriteRoutine(Node, Buffer, &Count);
        *BytesWritten = Count;
    }
    else
    {
        DWORD BytesWritten32 = 0;
        PVOID LocalBuffer;





        if (Count == 0)
        {
            if (!SetEndOfFile(Descriptor->Win32Handle))
            {

                Result = (WORD)GetLastError();
            }
            *BytesWritten = 0;
            return Result;
        }

        if (Count <= sizeof(StaticBuffer))
        {
            LocalBuffer = StaticBuffer;
        }
        else
        {
            LocalBuffer = RtlAllocateHeap(RtlGetProcessHeap(), 0, Count);
            ASSERT(LocalBuffer != ((void*)0));
        }


        EmulatorReadMemory(&EmulatorContext,
                           TO_LINEAR(HIWORD(Buffer), LOWORD(Buffer)),
                           LocalBuffer,
                           Count);


        if (WriteFile(Descriptor->Win32Handle, LocalBuffer, Count, &BytesWritten32, ((void*)0)))
        {

            Descriptor->Position += BytesWritten32;
            if (Descriptor->Position > Descriptor->Size) Descriptor->Size = Descriptor->Position;
        }
        else
        {

            Result = (WORD)GetLastError();
        }


        *BytesWritten = LOWORD(BytesWritten32);

        if (LocalBuffer != StaticBuffer)
            RtlFreeHeap(RtlGetProcessHeap(), 0, LocalBuffer);
    }


    return Result;
}

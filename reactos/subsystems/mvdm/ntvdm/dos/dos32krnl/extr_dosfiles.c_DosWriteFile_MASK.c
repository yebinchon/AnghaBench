#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int WORD ;
struct TYPE_7__ {int /*<<< orphan*/  (* WriteRoutine ) (TYPE_2__*,scalar_t__,int*) ;} ;
struct TYPE_6__ {int DeviceInfo; scalar_t__ Position; scalar_t__ Size; int /*<<< orphan*/  Win32Handle; int /*<<< orphan*/  DevicePointer; } ;
typedef  int /*<<< orphan*/  StaticBuffer ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  TYPE_1__* PDOS_FILE_DESCRIPTOR ;
typedef  TYPE_2__* PDOS_DEVICE_NODE ;
typedef  int* LPWORD ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int) ; 
 int ERROR_INVALID_FUNCTION ; 
 int ERROR_INVALID_HANDLE ; 
 int ERROR_SUCCESS ; 
 int /*<<< orphan*/  EmulatorContext ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FILE_INFO_DEVICE ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,scalar_t__,int*) ; 

WORD FUNC15(WORD FileHandle,
                  DWORD Buffer,
                  WORD Count,
                  LPWORD BytesWritten)
{
    WORD Result = ERROR_SUCCESS;
    PDOS_FILE_DESCRIPTOR Descriptor = FUNC3(FileHandle);
    BYTE StaticBuffer[8192];

    FUNC1("DosWriteFile: FileHandle 0x%04X, Count 0x%04X\n", FileHandle, Count);

    if (Descriptor == NULL)
    {
        /* Invalid handle */
        return ERROR_INVALID_HANDLE;
    }

    if (Descriptor->DeviceInfo & FILE_INFO_DEVICE)
    {
        PDOS_DEVICE_NODE Node = FUNC2(Descriptor->DevicePointer);
        if (!Node->WriteRoutine) return ERROR_INVALID_FUNCTION;

        /* Read the device */
        Node->WriteRoutine(Node, Buffer, &Count);
        *BytesWritten = Count;
    }
    else
    {
        DWORD BytesWritten32 = 0;
        PVOID LocalBuffer;

        /*
         * Writing zero bytes truncates or extends the file
         * to the current position of the file pointer.
         */
        if (Count == 0)
        {
            if (!FUNC11(Descriptor->Win32Handle))
            {
                /* Store the error code */
                Result = (WORD)FUNC5();
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
            LocalBuffer = FUNC8(FUNC10(), 0, Count);
            FUNC0(LocalBuffer != NULL);
        }

        /* Read from the memory */
        FUNC4(&EmulatorContext,
                           FUNC12(FUNC6(Buffer), FUNC7(Buffer)),
                           LocalBuffer,
                           Count);

        /* Write to the file */
        if (FUNC13(Descriptor->Win32Handle, LocalBuffer, Count, &BytesWritten32, NULL))
        {
            /* Update the position and size */
            Descriptor->Position += BytesWritten32; // or LOWORD(BytesWritten32); ?
            if (Descriptor->Position > Descriptor->Size) Descriptor->Size = Descriptor->Position;
        }
        else
        {
            /* Store the error code */
            Result = (WORD)FUNC5();
        }

        /* The number of bytes written is always 16-bit */
        *BytesWritten = FUNC7(BytesWritten32);

        if (LocalBuffer != StaticBuffer)
            FUNC9(FUNC10(), 0, LocalBuffer);
    }

    /* Return the error code */
    return Result;
}
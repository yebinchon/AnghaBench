#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_12__ {void* LastErrorCode; } ;
struct TYPE_11__ {int DeviceAttributes; int /*<<< orphan*/  (* OutputStatusRoutine ) (TYPE_2__*) ;int /*<<< orphan*/  (* InputStatusRoutine ) (TYPE_2__*) ;int /*<<< orphan*/  (* IoctlWriteRoutine ) (TYPE_2__*,int /*<<< orphan*/ ,int*) ;int /*<<< orphan*/  (* IoctlReadRoutine ) (TYPE_2__*,int /*<<< orphan*/ ,int*) ;} ;
struct TYPE_10__ {int DeviceInfo; int /*<<< orphan*/  Size; int /*<<< orphan*/  Position; int /*<<< orphan*/  DevicePointer; } ;
typedef  int* PWORD ;
typedef  TYPE_1__* PDOS_FILE_DESCRIPTOR ;
typedef  TYPE_2__* PDOS_DEVICE_NODE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int BYTE ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int DOS_DEVATTR_IOCTL ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 void* ERROR_INVALID_FUNCTION ; 
 void* ERROR_INVALID_HANDLE ; 
 void* ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  FALSE ; 
 int FILE_INFO_DEVICE ; 
 TYPE_7__* Sda ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  UNIMPLEMENTED ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

BOOLEAN FUNC9(WORD FileHandle, BYTE ControlCode, DWORD Buffer, PWORD Length)
{
    PDOS_FILE_DESCRIPTOR Descriptor;
    PDOS_DEVICE_NODE Node = NULL;

    switch (ControlCode)
    {
        case 0x04:
        case 0x05:
        case 0x08:
        case 0x09:
            return FUNC1(FileHandle, ControlCode, Buffer, Length);
    }

    Descriptor = FUNC3(FileHandle);

    if (!Descriptor)
    {
        Sda->LastErrorCode = ERROR_INVALID_HANDLE;
        return FALSE;
    }

    if (Descriptor->DeviceInfo & FILE_INFO_DEVICE)
    {
        Node = FUNC2(Descriptor->DevicePointer);
    }

    switch (ControlCode)
    {
        /* Get Device Information */
        case 0x00:
        {
            /*
             * See Ralf Brown: http://www.ctyme.com/intr/rb-2820.htm
             * for a list of possible flags.
             */
            FUNC4(Descriptor->DeviceInfo);
            return TRUE;
        }

        /* Set Device Information */
        case 0x01:
        {
            // TODO: NOT IMPLEMENTED
            UNIMPLEMENTED;
            return FALSE;
        }

        /* Read from Device I/O Control Channel */
        case 0x02:
        {
            if (Node == NULL || !(Node->DeviceAttributes & DOS_DEVATTR_IOCTL))
            {
                Sda->LastErrorCode = ERROR_INVALID_FUNCTION;
                return FALSE;
            }

            /* Do nothing if there is no IOCTL routine */
            if (!Node->IoctlReadRoutine)
            {
                *Length = 0;
                return TRUE;
            }

            Node->IoctlReadRoutine(Node, Buffer, Length);
            return TRUE;
        }

        /* Write to Device I/O Control Channel */
        case 0x03:
        {
            if (Node == NULL || !(Node->DeviceAttributes & DOS_DEVATTR_IOCTL))
            {
                Sda->LastErrorCode = ERROR_INVALID_FUNCTION;
                return FALSE;
            }

            /* Do nothing if there is no IOCTL routine */
            if (!Node->IoctlWriteRoutine)
            {
                *Length = 0;
                return TRUE;
            }

            Node->IoctlWriteRoutine(Node, Buffer, Length);
            return TRUE;
        }

        /* Get Input Status */
        case 0x06:
        {
            /* Check if this is a file or a device */
            if (Node)
            {
                /* Device*/

                if (!Node->InputStatusRoutine || Node->InputStatusRoutine(Node))
                {
                    /* Set the length to 0xFF to mark that it's ready */
                    *Length = 0xFF;
                }
                else
                {
                    /* Not ready */
                    *Length = 0;
                }
            }
            else
            {
                /* File */

                if (Descriptor->Position < Descriptor->Size)
                {
                    /* Set the length to 0xFF to mark that it's ready */
                    *Length = 0xFF;
                }
                else
                {
                    /* Not ready */
                    *Length = 0;
                }
            }

            return TRUE;
        }

        /* Get Output Status */
        case 0x07:
        {
            /* Check if this is a file or a device */
            if (Node)
            {
                /* Device*/

                if (!Node->OutputStatusRoutine || Node->OutputStatusRoutine(Node))
                {
                    /* Set the length to 0xFF to mark that it's ready */
                    *Length = 0xFF;
                }
                else
                {
                    /* Not ready */
                    *Length = 0;
                }
            }
            else
            {
                /* Files are always ready for output */
                *Length = 0xFF;
            }

            return TRUE;
        }

        /* Unsupported control code */
        default:
        {
            FUNC0("Unsupported IOCTL: 0x%02X\n", ControlCode);

            Sda->LastErrorCode = ERROR_INVALID_PARAMETER;
            return FALSE;
        }
    }
}
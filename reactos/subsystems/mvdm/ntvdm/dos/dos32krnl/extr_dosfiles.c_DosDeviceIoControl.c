
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_12__ {void* LastErrorCode; } ;
struct TYPE_11__ {int DeviceAttributes; int (* OutputStatusRoutine ) (TYPE_2__*) ;int (* InputStatusRoutine ) (TYPE_2__*) ;int (* IoctlWriteRoutine ) (TYPE_2__*,int ,int*) ;int (* IoctlReadRoutine ) (TYPE_2__*,int ,int*) ;} ;
struct TYPE_10__ {int DeviceInfo; int Size; int Position; int DevicePointer; } ;
typedef int* PWORD ;
typedef TYPE_1__* PDOS_FILE_DESCRIPTOR ;
typedef TYPE_2__* PDOS_DEVICE_NODE ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOLEAN ;


 int DOS_DEVATTR_IOCTL ;
 int DPRINT1 (char*,int) ;
 int DosDeviceIoControlDrive (int ,int,int ,int*) ;
 TYPE_2__* DosGetDriverNode (int ) ;
 TYPE_1__* DosGetHandleFileDescriptor (int ) ;
 void* ERROR_INVALID_FUNCTION ;
 void* ERROR_INVALID_HANDLE ;
 void* ERROR_INVALID_PARAMETER ;
 int FALSE ;
 int FILE_INFO_DEVICE ;
 TYPE_7__* Sda ;
 int TRUE ;
 int UNIMPLEMENTED ;
 int setDX (int) ;
 int stub1 (TYPE_2__*,int ,int*) ;
 int stub2 (TYPE_2__*,int ,int*) ;
 int stub3 (TYPE_2__*) ;
 int stub4 (TYPE_2__*) ;

BOOLEAN DosDeviceIoControl(WORD FileHandle, BYTE ControlCode, DWORD Buffer, PWORD Length)
{
    PDOS_FILE_DESCRIPTOR Descriptor;
    PDOS_DEVICE_NODE Node = ((void*)0);

    switch (ControlCode)
    {
        case 0x04:
        case 0x05:
        case 0x08:
        case 0x09:
            return DosDeviceIoControlDrive(FileHandle, ControlCode, Buffer, Length);
    }

    Descriptor = DosGetHandleFileDescriptor(FileHandle);

    if (!Descriptor)
    {
        Sda->LastErrorCode = ERROR_INVALID_HANDLE;
        return FALSE;
    }

    if (Descriptor->DeviceInfo & FILE_INFO_DEVICE)
    {
        Node = DosGetDriverNode(Descriptor->DevicePointer);
    }

    switch (ControlCode)
    {

        case 0x00:
        {




            setDX(Descriptor->DeviceInfo);
            return TRUE;
        }


        case 0x01:
        {

            UNIMPLEMENTED;
            return FALSE;
        }


        case 0x02:
        {
            if (Node == ((void*)0) || !(Node->DeviceAttributes & DOS_DEVATTR_IOCTL))
            {
                Sda->LastErrorCode = ERROR_INVALID_FUNCTION;
                return FALSE;
            }


            if (!Node->IoctlReadRoutine)
            {
                *Length = 0;
                return TRUE;
            }

            Node->IoctlReadRoutine(Node, Buffer, Length);
            return TRUE;
        }


        case 0x03:
        {
            if (Node == ((void*)0) || !(Node->DeviceAttributes & DOS_DEVATTR_IOCTL))
            {
                Sda->LastErrorCode = ERROR_INVALID_FUNCTION;
                return FALSE;
            }


            if (!Node->IoctlWriteRoutine)
            {
                *Length = 0;
                return TRUE;
            }

            Node->IoctlWriteRoutine(Node, Buffer, Length);
            return TRUE;
        }


        case 0x06:
        {

            if (Node)
            {


                if (!Node->InputStatusRoutine || Node->InputStatusRoutine(Node))
                {

                    *Length = 0xFF;
                }
                else
                {

                    *Length = 0;
                }
            }
            else
            {


                if (Descriptor->Position < Descriptor->Size)
                {

                    *Length = 0xFF;
                }
                else
                {

                    *Length = 0;
                }
            }

            return TRUE;
        }


        case 0x07:
        {

            if (Node)
            {


                if (!Node->OutputStatusRoutine || Node->OutputStatusRoutine(Node))
                {

                    *Length = 0xFF;
                }
                else
                {

                    *Length = 0;
                }
            }
            else
            {

                *Length = 0xFF;
            }

            return TRUE;
        }


        default:
        {
            DPRINT1("Unsupported IOCTL: 0x%02X\n", ControlCode);

            Sda->LastErrorCode = ERROR_INVALID_PARAMETER;
            return FALSE;
        }
    }
}

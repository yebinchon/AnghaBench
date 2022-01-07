
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_2__ {char CurrentDrive; void* LastErrorCode; } ;
typedef int* PWORD ;
typedef int DWORD ;
typedef char CHAR ;
typedef int BYTE ;
typedef int BOOLEAN ;


 int DPRINT1 (char*,char*,...) ;







 void* ERROR_INVALID_FUNCTION ;
 int FALSE ;
 int GetDriveTypeA (char*) ;
 TYPE_1__* Sda ;
 int TRUE ;
 int assert (int ) ;

BOOLEAN DosDeviceIoControlDrive(WORD DriveNumber, BYTE ControlCode, DWORD Buffer, PWORD Result)
{
    CHAR RootPath[] = "?:\\";

    if (DriveNumber == 0x00)
        RootPath[0] = 'A' + Sda->CurrentDrive;
    else
        RootPath[0] = 'A' + DriveNumber - 1;

    switch (ControlCode)
    {
        case 0x04:
            DPRINT1("UNIMPLEMENTED INT 21h, 4404h, Read from block device %s\n", RootPath);
            Sda->LastErrorCode = ERROR_INVALID_FUNCTION;
            break;
        case 0x05:
            DPRINT1("UNIMPLEMENTED INT 21h, 4405h, Write block device control string %s\n", RootPath);
            Sda->LastErrorCode = ERROR_INVALID_FUNCTION;
            break;
        case 0x08:
        {
            DWORD DriveType = GetDriveTypeA(RootPath);

            switch (DriveType)
            {
            case 128:
            case 132:
            default:
                DPRINT1("INT 21h, 4408h, %s -> DriveType = 0x%x\n", RootPath, DriveType);
                *Result = 0x000f;
                return TRUE;
            case 129:
            case 134:
                *Result = 0x0000;
                return TRUE;
            case 133:
                *Result = 0x0001;
                return TRUE;
            case 130:
            case 131:
                break;
            }
            Sda->LastErrorCode = ERROR_INVALID_FUNCTION;
            return FALSE;
        }
        case 0x09:
            DPRINT1("UNIMPLEMENTED INT 21h, 4409h, Determine if a logical device is local or remote %s\n", RootPath);
            Sda->LastErrorCode = ERROR_INVALID_FUNCTION;
            return FALSE;
        default:
            assert(0);
            break;
    }

    return FALSE;
}

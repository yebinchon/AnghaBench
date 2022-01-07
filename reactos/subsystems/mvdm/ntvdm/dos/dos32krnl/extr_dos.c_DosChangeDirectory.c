
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {char** CurrentDirectories; } ;
struct TYPE_5__ {size_t CurrentDrive; void* LastErrorCode; } ;
struct TYPE_4__ {size_t NumLocalDrives; } ;
typedef char* LPSTR ;
typedef int DosDirectory ;
typedef int DWORD ;
typedef int CurrentDirectory ;
typedef int CHAR ;
typedef size_t BYTE ;
typedef int BOOLEAN ;


 int DOS_DIR_LENGTH ;
 TYPE_3__* DosData ;
 void* ERROR_PATH_NOT_FOUND ;
 int FALSE ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int GetCurrentDirectoryA (int,int *) ;
 int GetFileAttributesA (char*) ;
 int GetLastError () ;
 int GetShortPathNameA (int *,int *,int) ;
 int INVALID_FILE_ATTRIBUTES ;
 void* LOWORD (int ) ;
 int MAX_PATH ;
 size_t RtlUpperChar (char) ;
 TYPE_2__* Sda ;
 int SetCurrentDirectoryA (char*) ;
 TYPE_1__* SysVars ;
 int TRUE ;
 char* strchr (int *,char) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static BOOLEAN DosChangeDirectory(LPSTR Directory)
{
    BYTE DriveNumber;
    DWORD Attributes;
    LPSTR Path;
    CHAR CurrentDirectory[MAX_PATH];
    CHAR DosDirectory[DOS_DIR_LENGTH];


    if (strlen(Directory) >= DOS_DIR_LENGTH)
    {
        Sda->LastErrorCode = ERROR_PATH_NOT_FOUND;
        return FALSE;
    }


    if (strlen(Directory) >= 2 && Directory[1] == ':')
    {

        DriveNumber = RtlUpperChar(Directory[0]) - 'A';


        if (DriveNumber >= SysVars->NumLocalDrives)
        {
            Sda->LastErrorCode = ERROR_PATH_NOT_FOUND;
            return FALSE;
        }
    }
    else
    {

        DriveNumber = Sda->CurrentDrive;
    }


    Attributes = GetFileAttributesA(Directory);


    if ((Attributes == INVALID_FILE_ATTRIBUTES) ||
       !(Attributes & FILE_ATTRIBUTE_DIRECTORY))
    {
        Sda->LastErrorCode = ERROR_PATH_NOT_FOUND;
        return FALSE;
    }


    if (DriveNumber == Sda->CurrentDrive)
    {

        if (!SetCurrentDirectoryA(Directory))
        {
            Sda->LastErrorCode = LOWORD(GetLastError());
            return FALSE;
        }
    }


    if (!GetCurrentDirectoryA(sizeof(CurrentDirectory), CurrentDirectory))
    {

        return FALSE;
    }


    if (!GetShortPathNameA(CurrentDirectory, DosDirectory, sizeof(DosDirectory)))
    {

        return FALSE;
    }


    Path = strchr(DosDirectory, '\\');
    if (Path != ((void*)0))
    {
        Path++;
        strncpy(DosData->CurrentDirectories[DriveNumber], Path, DOS_DIR_LENGTH);
    }
    else
    {
        DosData->CurrentDirectories[DriveNumber][0] = '\0';
    }


    return TRUE;
}

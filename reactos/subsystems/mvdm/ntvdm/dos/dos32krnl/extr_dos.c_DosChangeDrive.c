
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {char** CurrentDirectories; } ;
struct TYPE_5__ {char CurrentDrive; } ;
struct TYPE_4__ {char NumLocalDrives; } ;
typedef int DirectoryPath ;
typedef int CHAR ;
typedef char BYTE ;
typedef int BOOLEAN ;


 int DOS_CMDLINE_LENGTH ;
 TYPE_3__* DosData ;
 int FALSE ;
 int RtlZeroMemory (int *,int) ;
 TYPE_2__* Sda ;
 int SetCurrentDirectoryA (int *) ;
 TYPE_1__* SysVars ;
 int TRUE ;
 int snprintf (int *,int ,char*,char,char*) ;

__attribute__((used)) static BOOLEAN DosChangeDrive(BYTE Drive)
{
    CHAR DirectoryPath[DOS_CMDLINE_LENGTH + 1];


    if (Drive >= SysVars->NumLocalDrives) return FALSE;

    RtlZeroMemory(DirectoryPath, sizeof(DirectoryPath));


    snprintf(DirectoryPath,
             DOS_CMDLINE_LENGTH,
             "%c:\\%s",
             'A' + Drive,
             DosData->CurrentDirectories[Drive]);


    if (!SetCurrentDirectoryA(DirectoryPath)) return FALSE;


    Sda->CurrentDrive = Drive;


    return TRUE;
}

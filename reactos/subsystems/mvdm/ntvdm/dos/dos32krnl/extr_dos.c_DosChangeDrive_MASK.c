#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char** CurrentDirectories; } ;
struct TYPE_5__ {char CurrentDrive; } ;
struct TYPE_4__ {char NumLocalDrives; } ;
typedef  int /*<<< orphan*/  DirectoryPath ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  char BYTE ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  DOS_CMDLINE_LENGTH ; 
 TYPE_3__* DosData ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* Sda ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* SysVars ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char,char*) ; 

__attribute__((used)) static BOOLEAN FUNC3(BYTE Drive)
{
    CHAR DirectoryPath[DOS_CMDLINE_LENGTH + 1];

    /* Make sure the drive exists */
    if (Drive >= SysVars->NumLocalDrives) return FALSE;

    FUNC0(DirectoryPath, sizeof(DirectoryPath));

    /* Find the path to the new current directory */
    FUNC2(DirectoryPath,
             DOS_CMDLINE_LENGTH,
             "%c:\\%s",
             'A' + Drive,
             DosData->CurrentDirectories[Drive]);

    /* Change the current directory of the process */
    if (!FUNC1(DirectoryPath)) return FALSE;

    /* Set the current drive */
    Sda->CurrentDrive = Drive;

    /* Return success */
    return TRUE;
}
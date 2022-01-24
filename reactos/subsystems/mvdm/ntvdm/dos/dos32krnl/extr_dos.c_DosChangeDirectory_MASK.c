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
struct TYPE_5__ {size_t CurrentDrive; void* LastErrorCode; } ;
struct TYPE_4__ {size_t NumLocalDrives; } ;
typedef  char* LPSTR ;
typedef  int /*<<< orphan*/  DosDirectory ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  CurrentDirectory ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  size_t BYTE ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int DOS_DIR_LENGTH ; 
 TYPE_3__* DosData ; 
 void* ERROR_PATH_NOT_FOUND ; 
 int /*<<< orphan*/  FALSE ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int INVALID_FILE_ATTRIBUTES ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 size_t FUNC5 (char) ; 
 TYPE_2__* Sda ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 TYPE_1__* SysVars ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC7 (int /*<<< orphan*/ *,char) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 

__attribute__((used)) static BOOLEAN FUNC10(LPSTR Directory)
{
    BYTE DriveNumber;
    DWORD Attributes;
    LPSTR Path;
    CHAR CurrentDirectory[MAX_PATH];
    CHAR DosDirectory[DOS_DIR_LENGTH];

    /* Make sure the directory path is not too long */
    if (FUNC8(Directory) >= DOS_DIR_LENGTH)
    {
        Sda->LastErrorCode = ERROR_PATH_NOT_FOUND;
        return FALSE;
    }

    /* Check whether the directory string is of format "X:..." */
    if (FUNC8(Directory) >= 2 && Directory[1] == ':')
    {
        /* Get the drive number */
        DriveNumber = FUNC5(Directory[0]) - 'A';

        /* Make sure the drive exists */
        if (DriveNumber >= SysVars->NumLocalDrives)
        {
            Sda->LastErrorCode = ERROR_PATH_NOT_FOUND;
            return FALSE;
        }
    }
    else
    {
        /* Keep the current drive number */
        DriveNumber = Sda->CurrentDrive;
    }

    /* Get the file attributes */
    Attributes = FUNC1(Directory);

    /* Make sure the path exists and is a directory */
    if ((Attributes == INVALID_FILE_ATTRIBUTES) ||
       !(Attributes & FILE_ATTRIBUTE_DIRECTORY))
    {
        Sda->LastErrorCode = ERROR_PATH_NOT_FOUND;
        return FALSE;
    }

    /* Check if this is the current drive */
    if (DriveNumber == Sda->CurrentDrive)
    {
        /* Change the directory */
        if (!FUNC6(Directory))
        {
            Sda->LastErrorCode = FUNC4(FUNC2());
            return FALSE;
        }
    }

    /* Get the (possibly new) current directory (needed if we specified a relative directory) */
    if (!FUNC0(sizeof(CurrentDirectory), CurrentDirectory))
    {
        // TODO: Use some kind of default path?
        return FALSE;
    }

    /* Convert it to a DOS path */
    if (!FUNC3(CurrentDirectory, DosDirectory, sizeof(DosDirectory)))
    {
        // TODO: Use some kind of default path?
        return FALSE;
    }

    /* Get the directory part of the path and set the current directory for the drive */
    Path = FUNC7(DosDirectory, '\\');
    if (Path != NULL)
    {
        Path++; // Skip the backslash
        FUNC9(DosData->CurrentDirectories[DriveNumber], Path, DOS_DIR_LENGTH);
    }
    else
    {
        DosData->CurrentDirectories[DriveNumber][0] = '\0';
    }

    /* Return success */
    return TRUE;
}
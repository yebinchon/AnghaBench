#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_4__ {int /*<<< orphan*/  Buffer; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  TempPath ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  FileSystemName ;
typedef  int /*<<< orphan*/  File2 ;
typedef  int /*<<< orphan*/  FILETIME ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  Fat32Name ; 
 int /*<<< orphan*/  FatName ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 () ; 
 scalar_t__ FUNC5 (int,char*) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  NtfsName ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int FUNC15 (char*) ; 

int FUNC16(int argc, WCHAR * argv[])
{
    WCHAR TempPath[MAX_PATH + 1];
    WCHAR CopyPath[MAX_PATH + 1];
    WCHAR RootPath[] = {'A', ':', '\\', '\0'};
    WCHAR FileSystemName[sizeof("FAT32")]; /* Max we should hold - fail otherwise, we don't care */
    UNICODE_STRING FSName;
    WCHAR File1[] = {'\\', 'f', 'i', 'l', 'e', '1', '\0'};
    WCHAR File2[] = {'\\', 'f', 'i', 'l', 'e', '2', '\0'};
    ULONG FilePos;
    HANDLE hFile;
    FILETIME FileTime, File1Time;

    /* Get temp path in which will work */
    if (FUNC5(sizeof(TempPath) / sizeof(TempPath[0]), TempPath) == 0)
    {
        FUNC12(stderr, "Failed to get temp path\n");
        return FUNC4();
    }

    /* Assume it's X:\ something */
    RootPath[0] = TempPath[0];

    /* Get information about the volume */
    if (FUNC6(RootPath, NULL, 0, NULL, NULL, NULL, FileSystemName, sizeof(FileSystemName) / sizeof(FileSystemName[0])) == 0)
    {
        FUNC12(stderr, "Failed to get volume info\n");
        return FUNC4();
    }

    /* Convert to string */
    FUNC10(&FSName, FileSystemName);

    /* Bail out if that's not FAT or NTFS */
    if (FUNC9(&FSName, &FatName, FALSE) != 0 &&
        FUNC9(&FSName, &Fat32Name, FALSE) != 0 &&
        FUNC9(&FSName, &NtfsName, FALSE) != 0)
    {
        FUNC12(stderr, "!(FAT, FAT32, NTFS): \'%d\'\n", FSName.Buffer);
        return 0;
    }

    /* Ensure we can store complete path - no overrun */
    FilePos = FUNC15(TempPath);
    if (FilePos > MAX_PATH - sizeof(File2) / sizeof(WCHAR))
    {
        FUNC12(stderr, "Files won't fit\n");
        return 0;
    }

    /* Create first file */
    FUNC13(TempPath, File1);
    hFile = FUNC1(TempPath, 0, 0, NULL, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL);
    if (hFile == INVALID_HANDLE_VALUE)
    {
        FUNC12(stderr, "Failed to create file1\n");
        return FUNC4();
    }

    /* Get its creation timestamp. It will be our reference */
    /* Get it in FileTime because file1 will renamed to file */
    if (FUNC3(hFile, &FileTime, NULL, NULL) == FALSE)
    {
        FUNC12(stderr, "Failed to read creation time\n");
        FUNC0(hFile);
        return FUNC4();
    }

    FUNC0(hFile);

    /* Wait a least 10ms (resolution of FAT) */
    /* XXX: Increased to 1s for ReactOS... */
    FUNC11(1000);

    /* Create second file */
    /* Remove old file from buffer */
    TempPath[FilePos - 1] = 0;
    FUNC13(TempPath, File2);
    hFile = FUNC1(TempPath, 0, 0, NULL, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL);
    if (hFile == INVALID_HANDLE_VALUE)
    {
        FUNC12(stderr, "Failed to create file2\n");
        return FUNC4();
    }
    FUNC0(hFile);

    /* Rename file1 to file */
    TempPath[FilePos] = 0;
    FUNC13(TempPath, File1);
    FUNC14(CopyPath, TempPath);
    /* Remove number for dest */
    CopyPath[FUNC15(TempPath) - 1] = 0;
    if (FUNC7(TempPath, CopyPath) == 0)
    {
        FUNC12(stderr, "Failed to rename file1\n");
        return FUNC4();
    }

    /* Rename file2 to file1 */
    FUNC14(CopyPath, TempPath);
    /* Change 1 to 2 */
    CopyPath[FUNC15(TempPath) - 1] = L'2';
    if (FUNC7(CopyPath, TempPath) == 0)
    {
        FUNC12(stderr, "Failed to rename file2\n");
        return FUNC4();
    }

    /* Open file1 and get its creation time */
    hFile = FUNC1(TempPath, GENERIC_READ, 0, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
    if (hFile == INVALID_HANDLE_VALUE)
    {
        FUNC12(stderr, "Failed to open file1\n");
        return FUNC4();
    }
    if (FUNC3(hFile, &File1Time, NULL, NULL) == FALSE)
    {
        FUNC12(stderr, "Failed to read creation time\n");
        FUNC0(hFile);
        return FUNC4();
    }
    FUNC0(hFile);

    /* Delete files */
    CopyPath[FUNC15(TempPath) - 1] = 0;
    FUNC2(TempPath);
    FUNC2(CopyPath);

    /* Compare both, they have to be strictly identical */
    if (FUNC8(&FileTime, &File1Time, sizeof(FILETIME)) == sizeof(FILETIME))
    {
        FUNC12(stdout, "Tunnel cache in action\n");
        return 0;
    }

    FUNC12(stdout, "Tunnel cache NOT in action\n");
    return 0;
}
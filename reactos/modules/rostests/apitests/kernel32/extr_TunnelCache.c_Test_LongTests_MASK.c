#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int UCHAR ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  FILETIME ;
typedef  char CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_NEW ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 scalar_t__ FUNC4 (int,char*) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static
void
FUNC13(void)
{
    UCHAR i = 0;
    HANDLE hFile;
    CHAR TestDir[] = "XTestDirTunnelCache";
    CHAR OldDir[MAX_PATH];
    FILETIME FileTime, File1Time;

    /* Create a blank test directory */
    if (FUNC4(MAX_PATH, OldDir) == 0)
    {
        FUNC12("No test directory available\n");
        return;
    }

    /* Create a blank test directory */
    for (; i < 10; ++i)
    {
        TestDir[0] = '0' + i;
        if (FUNC1(TestDir, NULL))
        {
            if (FUNC9(TestDir) == 0)
            {
                FUNC7(TestDir);
                FUNC12("No test directory available\n");
                return;
            }
	
            break;
        }
    }

    if (i == 10)
    {
        FUNC12("No test directory available\n");
        return;
    }

    hFile = FUNC2("file1",
                       GENERIC_READ | GENERIC_WRITE,
                       0, NULL,
                       CREATE_NEW,
                       FILE_ATTRIBUTE_NORMAL,
                       NULL);
    FUNC11(hFile != INVALID_HANDLE_VALUE, "CreateFile() failed\n");
    FUNC11(FUNC5(hFile, &FileTime, NULL, NULL) != FALSE, "GetFileTime() failed\n");
    FUNC0(hFile);

    /* Wait a least 10ms (resolution of FAT) */
    /* XXX: Increased to 1s for ReactOS... */
    FUNC10(1000);

    hFile = FUNC2("file2",
                       GENERIC_READ | GENERIC_WRITE,
                       0, NULL,
                       CREATE_NEW,
                       FILE_ATTRIBUTE_NORMAL,
                       NULL);
    FUNC11(hFile != INVALID_HANDLE_VALUE, "CreateFile() failed\n");
    FUNC0(hFile);

    FUNC11(FUNC6("file1", "file") != FALSE, "MoveFile() failed\n");
    FUNC11(FUNC6("file2", "file1") != FALSE, "MoveFile() failed\n");

    hFile = FUNC2("file1",
                       GENERIC_READ,
                       0, NULL,
                       OPEN_EXISTING,
                       FILE_ATTRIBUTE_NORMAL,
                       NULL);
    FUNC11(hFile != INVALID_HANDLE_VALUE, "CreateFile() failed\n");
    FUNC11(FUNC5(hFile, &File1Time, NULL, NULL) != FALSE, "GetFileTime() failed\n");
    FUNC0(hFile);

    FUNC11(FUNC8(&FileTime, &File1Time, sizeof(FILETIME)) == sizeof(FILETIME), "Tunnel cache failed\n");

    FUNC3("file2");
    FUNC3("file1");
    FUNC3("file");

    FUNC9(OldDir);
    FUNC7(TestDir);
}
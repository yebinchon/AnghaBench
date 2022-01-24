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
struct TYPE_7__ {int /*<<< orphan*/  FilePtr; TYPE_1__* OptionalHeader; int /*<<< orphan*/  AlignBuf; int /*<<< orphan*/  cbInFileSize; } ;
struct TYPE_6__ {int /*<<< orphan*/  FileAlignment; } ;
typedef  TYPE_2__ FILE_INFO ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC13(int argc, char* argv[])
{
    char* pszInFile;
    char* pszOutFile;
    FILE_INFO File;
    FILE* outfile;
    int ret;

    if (argc != 3)
    {
        FUNC7(stderr, "Usage: rsym <exefile> <symfile>\n");
        FUNC4(1);
    }

    pszInFile = FUNC3(argv[1]);
    pszOutFile = FUNC3(argv[2]);

    File.FilePtr = FUNC9(pszInFile, &File.cbInFileSize);
    if (!File.FilePtr)
    {
        FUNC7(stderr, "An error occured loading '%s'\n", pszInFile);
        FUNC4(1);
    }

    ret = FUNC1(&File);
    if (ret != 1)
    {
        FUNC8(File.FilePtr);
        FUNC4(ret == -1 ? 1 : 0);
    }

    File.AlignBuf = FUNC10(File.OptionalHeader->FileAlignment);
    FUNC11(File.AlignBuf, 0, File.OptionalHeader->FileAlignment);

    FUNC0(&File);

    outfile = FUNC6(pszOutFile, "wb");
    if (outfile == NULL)
    {
        FUNC12("Cannot open output file");
        FUNC8(File.FilePtr);
        FUNC4(1);
    }

    FUNC2(outfile, &File);

    FUNC5(outfile);

    return 0;
}
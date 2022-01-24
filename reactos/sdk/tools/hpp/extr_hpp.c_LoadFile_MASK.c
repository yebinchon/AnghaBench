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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int FUNC2 (void*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

void*
FUNC8(const char* pszFileName, size_t* pFileSize)
{
    FILE* file;
    void* pFileData = NULL;
    int iFileSize;

    FUNC7("Loading file...");

    file = FUNC1(pszFileName, "rb");
    if (!file)
    {
        FUNC7("Could not open file\n");
        return NULL;
    }

    FUNC4(file, 0L, SEEK_END);
    iFileSize = FUNC5(file);
    FUNC4(file, 0L, SEEK_SET);
    *pFileSize = iFileSize;
    FUNC7("ok. Size is %d\n", iFileSize);

    pFileData = FUNC6(iFileSize + 1);

    if (pFileData != NULL)
    {
        if (iFileSize != FUNC2(pFileData, 1, iFileSize, file))
        {
            FUNC3(pFileData);
            pFileData = NULL;
        }
    }
    else
    {
        FUNC7("Could not allocate memory for file\n");
    }

    FUNC0(file);

    return pFileData;
}
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
typedef  size_t ULONG ;
typedef  int /*<<< orphan*/  IBackgroundCopyFile ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ **,size_t*) ; 
 int NUM_FILES ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  test_enumFiles ; 
 size_t test_fileCount ; 

__attribute__((used)) static void FUNC3(void)
{
    HRESULT hres;
    IBackgroundCopyFile *files[NUM_FILES];
    ULONG fetched;
    ULONG i;

    for (i = 0; i < test_fileCount; i++)
        files[i] = NULL;

    fetched = 0;
    hres = FUNC1(test_enumFiles, test_fileCount, files, &fetched);
    FUNC2(hres == S_OK, "Next failed: %08x\n", hres);
    FUNC2(fetched == test_fileCount, "Next returned the incorrect number of files: %08x\n", hres);

    for (i = 0; i < test_fileCount; i++)
    {
        FUNC2(files[i] != NULL, "Next returned NULL\n");
        if (files[i])
            FUNC0(files[i]);
    }
}
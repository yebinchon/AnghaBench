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
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  IBackgroundCopyFile ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  test_enumFiles ; 
 scalar_t__ test_fileCount ; 

__attribute__((used)) static void FUNC3(void)
{
    HRESULT hres;
    IBackgroundCopyFile *file;
    ULONG i;

    /* Fetch the available files */
    for (i = 0; i < test_fileCount; i++)
    {
        hres = FUNC1(test_enumFiles, 1, &file, NULL);
        FUNC2(hres == S_OK, "Next failed: %08x\n", hres);
        FUNC0(file);
    }

    /* Attempt to fetch one more than the number of available files */
    hres = FUNC1(test_enumFiles, 1, &file, NULL);
    FUNC2(hres == S_FALSE, "Next off end of available files failed: %08x\n", hres);
}
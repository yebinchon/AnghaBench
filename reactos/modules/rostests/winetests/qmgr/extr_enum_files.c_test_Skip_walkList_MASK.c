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
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  test_enumFiles ; 
 scalar_t__ test_fileCount ; 

__attribute__((used)) static void FUNC2(void)
{
    HRESULT hres;
    ULONG i;

    for (i = 0; i < test_fileCount; i++)
    {
        hres = FUNC0(test_enumFiles, 1);
        FUNC1(hres == S_OK, "Skip failed: %08x\n", hres);
    }

    hres = FUNC0(test_enumFiles, 1);
    FUNC1(hres == S_FALSE, "Skip expected end of list: %08x\n", hres);
}
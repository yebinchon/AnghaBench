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
typedef  int /*<<< orphan*/  IBackgroundCopyFile ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int NUM_FILES ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  test_enumFiles ; 

__attribute__((used)) static void FUNC2(void)
{
    HRESULT hres;
    IBackgroundCopyFile *files[NUM_FILES];

    /* E_INVALIDARG: pceltFetched can ONLY be NULL if celt is 1 */
    hres = FUNC0(test_enumFiles, 2, files, NULL);
    FUNC1(hres == E_INVALIDARG, "Invalid call to Next succeeded: %08x\n", hres);
}
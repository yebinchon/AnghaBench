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
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int MAX_PATH ; 
 int /*<<< orphan*/  SHGFP_TYPE_CURRENT ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(BOOL optional, int folder)
{
    char path[MAX_PATH];
    HRESULT hr;

    if (!&pSHGetFolderPathA) return;

    hr = FUNC2(NULL, folder, NULL, SHGFP_TYPE_CURRENT, path);
    FUNC1(hr == S_OK || optional,
     "SHGetFolderPathA(NULL, %s, NULL, SHGFP_TYPE_CURRENT, path) failed: 0x%08x\n", FUNC0(folder), hr);
}
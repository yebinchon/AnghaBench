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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  int /*<<< orphan*/  LPSHELLFOLDER ;
typedef  int /*<<< orphan*/  LPCITEMIDLIST ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC4(LPSHELLFOLDER psf, LPCITEMIDLIST pidl, LPSTR path, DWORD type)
{
    BOOL ret = FALSE;
    WCHAR wPath[MAX_PATH];

    FUNC1("%p %p %p %d\n", psf, pidl, path, type);

    if (!pidl || !path)
        return FALSE;

    ret = FUNC0(psf, pidl, wPath, type);
    FUNC2(CP_ACP, 0, wPath, -1, path, MAX_PATH, NULL, NULL);
    FUNC1("%p %p %s\n", psf, pidl, FUNC3(path));

    return ret;
}
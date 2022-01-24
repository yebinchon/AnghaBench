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
typedef  int /*<<< orphan*/  IFolder ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ CTL_E_FILEALREADYEXISTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fs3 ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,scalar_t__,...) ; 

__attribute__((used)) static void FUNC8(void)
{
    WCHAR buffW[MAX_PATH];
    HRESULT hr;
    BSTR path;
    IFolder *folder;
    BOOL ret;

    FUNC6(NULL, buffW);
    ret = FUNC0(buffW, NULL);
    FUNC7(ret, "got %d, %d\n", ret, FUNC1());

    /* create existing directory */
    path = FUNC4(buffW);
    folder = (void*)0xdeabeef;
    hr = FUNC2(fs3, path, &folder);
    FUNC7(hr == CTL_E_FILEALREADYEXISTS, "got 0x%08x\n", hr);
    FUNC7(folder == NULL, "got %p\n", folder);
    FUNC5(path);
    FUNC3(buffW);
}
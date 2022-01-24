#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wfd ;
struct TYPE_7__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_10__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; TYPE_1__ output; TYPE_4__ input; TYPE_4__ patch; } ;
typedef  TYPE_2__ patch_data ;
struct TYPE_9__ {int member_0; scalar_t__ nFileSizeLow; } ;
typedef  TYPE_3__ WIN32_FIND_DATAA ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  APPLY_OPTION_TEST_ONLY ; 
 int FUNC0 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ ERROR_PATCH_CORRUPT ; 
 scalar_t__ ERROR_PATCH_WRONG_FILE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (char*,TYPE_3__*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,scalar_t__,...) ; 
 scalar_t__ FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  temp_path ; 

__attribute__((used)) static void FUNC14(patch_data* current)
{
    char patchname[MAX_PATH], targetname[MAX_PATH], outputname[MAX_PATH];
    BOOL bResult;
    DWORD dwErr;
    HANDLE hPatch, hTarget, hFind;
    WIN32_FIND_DATAA wfd = { sizeof(wfd) };

    if (!FUNC6(temp_path, "MPO", 0, outputname))
    {
        FUNC12(0, "GetTempFileNameA failed %lu, %s\n", FUNC5(), current->name);
        return;
    }
    FUNC2(outputname);

    if (!FUNC10(patchname, &current->patch))
        return;
    if (!FUNC10(targetname, &current->input))
    {
        FUNC2(patchname);
        return;
    }
    // There is a bug in 2k3, where calling 'TestApplyPatchToFileA' gives an AV...
#if 0
    bResult = TestApplyPatchToFileA(patchname, targetname, 0);
#else
    hPatch = FUNC13(patchname, FALSE);
    hTarget = FUNC13(targetname, FALSE);
    bResult = FUNC8(hPatch, hTarget, 0);
    FUNC1(hPatch);
    FUNC1(hTarget);
#endif
    FUNC12(bResult, "TestApplyPatchToFileA failed %lu, %s\n", FUNC5(), current->name);
    // Files are not touched
    FUNC9(patchname, current->patch.data, current->patch.len, current->name);
    FUNC9(targetname, current->input.data, current->input.len, current->name);
    FUNC2(patchname);
    FUNC2(targetname);


    if (!FUNC11(patchname, current->patch.data, current->patch.len -1))
        return;
    if (!FUNC10(targetname, &current->input))
    {
        FUNC2(patchname);
        return;
    }
    hPatch = FUNC13(patchname, FALSE);
    hTarget = FUNC13(targetname, FALSE);
    bResult = FUNC8(hPatch, hTarget, 0);
    dwErr = FUNC5();
    FUNC1(hPatch);
    FUNC1(hTarget);
    FUNC12(!bResult, "TestApplyPatchToFileA succeeded, %s\n", current->name);
    FUNC12(dwErr == ERROR_PATCH_CORRUPT, "TestApplyPatchToFileA GetLastError %lx, %s\n", dwErr, current->name);
    // Files are not touched
    FUNC9(patchname, current->patch.data, current->patch.len - 1, current->name);
    FUNC9(targetname, current->input.data, current->input.len, current->name);
    FUNC2(patchname);
    FUNC2(targetname);

    if (!FUNC10(patchname, &current->patch))
        return;
    if (!FUNC11(targetname, current->input.data, current->input.len -1))
    {
        FUNC2(patchname);
        return;
    }
    hPatch = FUNC13(patchname, FALSE);
    hTarget = FUNC13(targetname, FALSE);
    bResult = FUNC8(hPatch, hTarget, 0);
    dwErr = FUNC5();
    FUNC1(hPatch);
    FUNC1(hTarget);
    FUNC12(!bResult, "TestApplyPatchToFileA succeeded, %s\n", current->name);
    FUNC12(dwErr == ERROR_PATCH_WRONG_FILE, "TestApplyPatchToFileA GetLastError %lx, %s\n", dwErr, current->name);
    // Files are not touched
    FUNC9(patchname, current->patch.data, current->patch.len, current->name);
    FUNC9(targetname, current->input.data, current->input.len -1, current->name);
    FUNC2(patchname);
    FUNC2(targetname);

    if (!FUNC10(patchname, &current->patch))
        return;
    if (!FUNC10(targetname, &current->input))
    {
        FUNC2(patchname);
        return;
    }
    bResult = FUNC0(patchname, targetname, outputname, APPLY_OPTION_TEST_ONLY);

    FUNC12(bResult, "ApplyPatchToFileA failed %lu, %s\n", FUNC5(), current->name);
    // Files are not touched
    FUNC9(patchname, current->patch.data, current->patch.len, current->name);
    FUNC9(targetname, current->input.data, current->input.len, current->name);
    // W2k3 creates an empty file, W10 does not create a file
    hFind = FUNC4(outputname, &wfd);
    FUNC12(hFind == INVALID_HANDLE_VALUE || wfd.nFileSizeLow == 0, "Got a (non-empty) file, %s\n", current->name);
    if (hFind != INVALID_HANDLE_VALUE)
        FUNC3(hFind);
    FUNC2(patchname);
    FUNC2(targetname);
    FUNC2(outputname);

    if (!FUNC10(patchname, &current->patch))
        return;
    if (!FUNC10(targetname, &current->input))
    {
        FUNC2(patchname);
        return;
    }
    bResult = FUNC0(patchname, targetname, outputname, 0);
    FUNC12(bResult, "ApplyPatchToFileA failed %lu, %s\n", FUNC5(), current->name);
    // Files are not touched
    FUNC9(patchname, current->patch.data, current->patch.len, current->name);
    FUNC9(targetname, current->input.data, current->input.len, current->name);
    // One output file
    FUNC9(outputname, current->output.data, current->output.len, current->name);
    FUNC2(patchname);
    FUNC2(targetname);
    FUNC2(outputname);
}
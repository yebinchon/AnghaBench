#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  float WCHAR ;
struct TYPE_2__ {int /*<<< orphan*/  GetFindData; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  ITEMIDLIST ;
typedef  int /*<<< orphan*/  IShellFolder ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ; 
 int /*<<< orphan*/  ERROR_FILE_NOT_FOUND ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,float*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,float*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  fsbd ; 
 TYPE_1__ fsbdVtbl ; 
 int /*<<< orphan*/  fsbd_GetFindData_fail ; 
 int /*<<< orphan*/  fsbd_GetFindData_invalid ; 
 int /*<<< orphan*/  fsbd_GetFindData_junk ; 
 int /*<<< orphan*/  fsbd_GetFindData_nul ; 
 int /*<<< orphan*/  fsbd_GetFindData_valid ; 
 int /*<<< orphan*/  FUNC12 (float*,float*) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,float*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

__attribute__((used)) static void FUNC16(void)
{
    WCHAR wFileSystemBindData[] =
        {'F','i','l','e',' ','S','y','s','t','e','m',' ','B','i','n','d',' ','D','a','t','a',0};
    WCHAR adirW[] = {'C',':','\\','f','s','b','d','d','i','r',0};
    WCHAR afileW[] = {'C',':','\\','f','s','b','d','d','i','r','\\','f','i','l','e','.','t','x','t',0};
    WCHAR afile2W[] = {'C',':','\\','f','s','b','d','d','i','r','\\','s','\\','f','i','l','e','.','t','x','t',0};
    const HRESULT exp_err = FUNC3(ERROR_FILE_NOT_FOUND);

    IShellFolder *psf;
    IBindCtx *pbc;
    HRESULT hres;
    ITEMIDLIST *pidl;

    /* Check if we support WCHAR functions */
    FUNC11(0xdeadbeef);
    FUNC12(adirW, adirW);
    if(FUNC2() == ERROR_CALL_NOT_IMPLEMENTED){
        FUNC15("Most W-calls are not implemented\n");
        return;
    }

    hres = FUNC9(&psf);
    FUNC13(hres == S_OK, "SHGetDesktopFolder failed: 0x%08x\n", hres);
    if(FUNC1(hres)){
        FUNC15("Failed to get IShellFolder, can't run tests\n");
        return;
    }

    /* fails on unknown dir with no IBindCtx */
    hres = FUNC7(psf, NULL, NULL, adirW, NULL, &pidl, NULL);
    FUNC13(hres == exp_err, "ParseDisplayName failed with wrong error: 0x%08x\n", hres);
    hres = FUNC7(psf, NULL, NULL, afileW, NULL, &pidl, NULL);
    FUNC13(hres == exp_err, "ParseDisplayName failed with wrong error: 0x%08x\n", hres);
    hres = FUNC7(psf, NULL, NULL, afile2W, NULL, &pidl, NULL);
    FUNC13(hres == exp_err, "ParseDisplayName failed with wrong error: 0x%08x\n", hres);

    /* fails on unknown dir with IBindCtx with no IFileSystemBindData */
    hres = FUNC0(0, &pbc);
    FUNC13(hres == S_OK, "CreateBindCtx failed: 0x%08x\n", hres);

    hres = FUNC7(psf, NULL, pbc, adirW, NULL, &pidl, NULL);
    FUNC13(hres == exp_err, "ParseDisplayName failed with wrong error: 0x%08x\n", hres);
    hres = FUNC7(psf, NULL, pbc, afileW, NULL, &pidl, NULL);
    FUNC13(hres == exp_err, "ParseDisplayName failed with wrong error: 0x%08x\n", hres);
    hres = FUNC7(psf, NULL, pbc, afile2W, NULL, &pidl, NULL);
    FUNC13(hres == exp_err, "ParseDisplayName failed with wrong error: 0x%08x\n", hres);

    /* unknown dir with IBindCtx with IFileSystemBindData */
    hres = FUNC4(pbc, wFileSystemBindData, (IUnknown*)&fsbd);
    FUNC13(hres == S_OK, "RegisterObjectParam failed: 0x%08x\n", hres);

    /* return E_FAIL from GetFindData */
    pidl = (ITEMIDLIST*)0xdeadbeef;
    fsbdVtbl.GetFindData = fsbd_GetFindData_fail;
    hres = FUNC7(psf, NULL, pbc, adirW, NULL, &pidl, NULL);
    FUNC13(hres == S_OK, "ParseDisplayName failed: 0x%08x\n", hres);
    if(FUNC10(hres)){
        FUNC14(pidl, adirW);
        FUNC6(pidl);
    }

    hres = FUNC7(psf, NULL, pbc, afileW, NULL, &pidl, NULL);
    FUNC13(hres == S_OK, "ParseDisplayName failed: 0x%08x\n", hres);
    if(FUNC10(hres)){
        FUNC14(pidl, afileW);
        FUNC6(pidl);
    }

    hres = FUNC7(psf, NULL, pbc, afile2W, NULL, &pidl, NULL);
    FUNC13(hres == S_OK, "ParseDisplayName failed: 0x%08x\n", hres);
    if(FUNC10(hres)){
        FUNC14(pidl, afile2W);
        FUNC6(pidl);
    }

    /* set FIND_DATA struct to NULLs */
    pidl = (ITEMIDLIST*)0xdeadbeef;
    fsbdVtbl.GetFindData = fsbd_GetFindData_nul;
    hres = FUNC7(psf, NULL, pbc, adirW, NULL, &pidl, NULL);
    FUNC13(hres == S_OK, "ParseDisplayName failed: 0x%08x\n", hres);
    if(FUNC10(hres)){
        FUNC14(pidl, adirW);
        FUNC6(pidl);
    }

    hres = FUNC7(psf, NULL, pbc, afileW, NULL, &pidl, NULL);
    FUNC13(hres == S_OK, "ParseDisplayName failed: 0x%08x\n", hres);
    if(FUNC10(hres)){
        FUNC14(pidl, afileW);
        FUNC6(pidl);
    }

    hres = FUNC7(psf, NULL, pbc, afile2W, NULL, &pidl, NULL);
    FUNC13(hres == S_OK, "ParseDisplayName failed: 0x%08x\n", hres);
    if(FUNC10(hres)){
        FUNC14(pidl, afile2W);
        FUNC6(pidl);
    }

    /* set FIND_DATA struct to junk */
    pidl = (ITEMIDLIST*)0xdeadbeef;
    fsbdVtbl.GetFindData = fsbd_GetFindData_junk;
    hres = FUNC7(psf, NULL, pbc, adirW, NULL, &pidl, NULL);
    FUNC13(hres == S_OK, "ParseDisplayName failed: 0x%08x\n", hres);
    if(FUNC10(hres)){
        FUNC14(pidl, adirW);
        FUNC6(pidl);
    }

    hres = FUNC7(psf, NULL, pbc, afileW, NULL, &pidl, NULL);
    FUNC13(hres == S_OK, "ParseDisplayName failed: 0x%08x\n", hres);
    if(FUNC10(hres)){
        FUNC14(pidl, afileW);
        FUNC6(pidl);
    }

    hres = FUNC7(psf, NULL, pbc, afile2W, NULL, &pidl, NULL);
    FUNC13(hres == S_OK, "ParseDisplayName failed: 0x%08x\n", hres);
    if(FUNC10(hres)){
        FUNC14(pidl, afile2W);
        FUNC6(pidl);
    }

    /* set FIND_DATA struct to invalid data */
    pidl = (ITEMIDLIST*)0xdeadbeef;
    fsbdVtbl.GetFindData = fsbd_GetFindData_invalid;
    hres = FUNC7(psf, NULL, pbc, adirW, NULL, &pidl, NULL);
    FUNC13(hres == S_OK, "ParseDisplayName failed: 0x%08x\n", hres);
    if(FUNC10(hres)){
        FUNC14(pidl, adirW);
        FUNC6(pidl);
    }

    hres = FUNC7(psf, NULL, pbc, afileW, NULL, &pidl, NULL);
    FUNC13(hres == S_OK, "ParseDisplayName failed: 0x%08x\n", hres);
    if(FUNC10(hres)){
        FUNC14(pidl, afileW);
        FUNC6(pidl);
    }

    hres = FUNC7(psf, NULL, pbc, afile2W, NULL, &pidl, NULL);
    FUNC13(hres == S_OK, "ParseDisplayName failed: 0x%08x\n", hres);
    if(FUNC10(hres)){
        FUNC14(pidl, afile2W);
        FUNC6(pidl);
    }

    /* set FIND_DATA struct to valid data */
    pidl = (ITEMIDLIST*)0xdeadbeef;
    fsbdVtbl.GetFindData = fsbd_GetFindData_valid;
    hres = FUNC7(psf, NULL, pbc, adirW, NULL, &pidl, NULL);
    FUNC13(hres == S_OK, "ParseDisplayName failed: 0x%08x\n", hres);
    if(FUNC10(hres)){
        FUNC14(pidl, adirW);
        FUNC6(pidl);
    }

    hres = FUNC7(psf, NULL, pbc, afileW, NULL, &pidl, NULL);
    FUNC13(hres == S_OK, "ParseDisplayName failed: 0x%08x\n", hres);
    if(FUNC10(hres)){
        FUNC14(pidl, afileW);
        FUNC6(pidl);
    }

    hres = FUNC7(psf, NULL, pbc, afile2W, NULL, &pidl, NULL);
    FUNC13(hres == S_OK, "ParseDisplayName failed: 0x%08x\n", hres);
    if(FUNC10(hres)){
        FUNC14(pidl, afile2W);
        FUNC6(pidl);
    }

    FUNC5(pbc);
    FUNC8(psf);
}
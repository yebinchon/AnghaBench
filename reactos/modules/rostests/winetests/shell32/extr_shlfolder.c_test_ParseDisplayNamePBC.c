
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef float WCHAR ;
struct TYPE_2__ {int GetFindData; } ;
typedef int IUnknown ;
typedef int ITEMIDLIST ;
typedef int IShellFolder ;
typedef int IBindCtx ;
typedef scalar_t__ HRESULT ;


 scalar_t__ CreateBindCtx (int ,int **) ;
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ;
 int ERROR_FILE_NOT_FOUND ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ GetLastError () ;
 scalar_t__ HRESULT_FROM_WIN32 (int ) ;
 scalar_t__ IBindCtx_RegisterObjectParam (int *,float*,int *) ;
 int IBindCtx_Release (int *) ;
 int ILFree (int *) ;
 scalar_t__ IShellFolder_ParseDisplayName (int *,int *,int *,float*,int *,int **,int *) ;
 int IShellFolder_Release (int *) ;
 scalar_t__ SHGetDesktopFolder (int **) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int SetLastError (int) ;
 int fsbd ;
 TYPE_1__ fsbdVtbl ;
 int fsbd_GetFindData_fail ;
 int fsbd_GetFindData_invalid ;
 int fsbd_GetFindData_junk ;
 int fsbd_GetFindData_nul ;
 int fsbd_GetFindData_valid ;
 int lstrcmpiW (float*,float*) ;
 int ok (int,char*,scalar_t__) ;
 int verify_pidl (int *,float*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_ParseDisplayNamePBC(void)
{
    WCHAR wFileSystemBindData[] =
        {'F','i','l','e',' ','S','y','s','t','e','m',' ','B','i','n','d',' ','D','a','t','a',0};
    WCHAR adirW[] = {'C',':','\\','f','s','b','d','d','i','r',0};
    WCHAR afileW[] = {'C',':','\\','f','s','b','d','d','i','r','\\','f','i','l','e','.','t','x','t',0};
    WCHAR afile2W[] = {'C',':','\\','f','s','b','d','d','i','r','\\','s','\\','f','i','l','e','.','t','x','t',0};
    const HRESULT exp_err = HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND);

    IShellFolder *psf;
    IBindCtx *pbc;
    HRESULT hres;
    ITEMIDLIST *pidl;


    SetLastError(0xdeadbeef);
    lstrcmpiW(adirW, adirW);
    if(GetLastError() == ERROR_CALL_NOT_IMPLEMENTED){
        win_skip("Most W-calls are not implemented\n");
        return;
    }

    hres = SHGetDesktopFolder(&psf);
    ok(hres == S_OK, "SHGetDesktopFolder failed: 0x%08x\n", hres);
    if(FAILED(hres)){
        win_skip("Failed to get IShellFolder, can't run tests\n");
        return;
    }


    hres = IShellFolder_ParseDisplayName(psf, ((void*)0), ((void*)0), adirW, ((void*)0), &pidl, ((void*)0));
    ok(hres == exp_err, "ParseDisplayName failed with wrong error: 0x%08x\n", hres);
    hres = IShellFolder_ParseDisplayName(psf, ((void*)0), ((void*)0), afileW, ((void*)0), &pidl, ((void*)0));
    ok(hres == exp_err, "ParseDisplayName failed with wrong error: 0x%08x\n", hres);
    hres = IShellFolder_ParseDisplayName(psf, ((void*)0), ((void*)0), afile2W, ((void*)0), &pidl, ((void*)0));
    ok(hres == exp_err, "ParseDisplayName failed with wrong error: 0x%08x\n", hres);


    hres = CreateBindCtx(0, &pbc);
    ok(hres == S_OK, "CreateBindCtx failed: 0x%08x\n", hres);

    hres = IShellFolder_ParseDisplayName(psf, ((void*)0), pbc, adirW, ((void*)0), &pidl, ((void*)0));
    ok(hres == exp_err, "ParseDisplayName failed with wrong error: 0x%08x\n", hres);
    hres = IShellFolder_ParseDisplayName(psf, ((void*)0), pbc, afileW, ((void*)0), &pidl, ((void*)0));
    ok(hres == exp_err, "ParseDisplayName failed with wrong error: 0x%08x\n", hres);
    hres = IShellFolder_ParseDisplayName(psf, ((void*)0), pbc, afile2W, ((void*)0), &pidl, ((void*)0));
    ok(hres == exp_err, "ParseDisplayName failed with wrong error: 0x%08x\n", hres);


    hres = IBindCtx_RegisterObjectParam(pbc, wFileSystemBindData, (IUnknown*)&fsbd);
    ok(hres == S_OK, "RegisterObjectParam failed: 0x%08x\n", hres);


    pidl = (ITEMIDLIST*)0xdeadbeef;
    fsbdVtbl.GetFindData = fsbd_GetFindData_fail;
    hres = IShellFolder_ParseDisplayName(psf, ((void*)0), pbc, adirW, ((void*)0), &pidl, ((void*)0));
    ok(hres == S_OK, "ParseDisplayName failed: 0x%08x\n", hres);
    if(SUCCEEDED(hres)){
        verify_pidl(pidl, adirW);
        ILFree(pidl);
    }

    hres = IShellFolder_ParseDisplayName(psf, ((void*)0), pbc, afileW, ((void*)0), &pidl, ((void*)0));
    ok(hres == S_OK, "ParseDisplayName failed: 0x%08x\n", hres);
    if(SUCCEEDED(hres)){
        verify_pidl(pidl, afileW);
        ILFree(pidl);
    }

    hres = IShellFolder_ParseDisplayName(psf, ((void*)0), pbc, afile2W, ((void*)0), &pidl, ((void*)0));
    ok(hres == S_OK, "ParseDisplayName failed: 0x%08x\n", hres);
    if(SUCCEEDED(hres)){
        verify_pidl(pidl, afile2W);
        ILFree(pidl);
    }


    pidl = (ITEMIDLIST*)0xdeadbeef;
    fsbdVtbl.GetFindData = fsbd_GetFindData_nul;
    hres = IShellFolder_ParseDisplayName(psf, ((void*)0), pbc, adirW, ((void*)0), &pidl, ((void*)0));
    ok(hres == S_OK, "ParseDisplayName failed: 0x%08x\n", hres);
    if(SUCCEEDED(hres)){
        verify_pidl(pidl, adirW);
        ILFree(pidl);
    }

    hres = IShellFolder_ParseDisplayName(psf, ((void*)0), pbc, afileW, ((void*)0), &pidl, ((void*)0));
    ok(hres == S_OK, "ParseDisplayName failed: 0x%08x\n", hres);
    if(SUCCEEDED(hres)){
        verify_pidl(pidl, afileW);
        ILFree(pidl);
    }

    hres = IShellFolder_ParseDisplayName(psf, ((void*)0), pbc, afile2W, ((void*)0), &pidl, ((void*)0));
    ok(hres == S_OK, "ParseDisplayName failed: 0x%08x\n", hres);
    if(SUCCEEDED(hres)){
        verify_pidl(pidl, afile2W);
        ILFree(pidl);
    }


    pidl = (ITEMIDLIST*)0xdeadbeef;
    fsbdVtbl.GetFindData = fsbd_GetFindData_junk;
    hres = IShellFolder_ParseDisplayName(psf, ((void*)0), pbc, adirW, ((void*)0), &pidl, ((void*)0));
    ok(hres == S_OK, "ParseDisplayName failed: 0x%08x\n", hres);
    if(SUCCEEDED(hres)){
        verify_pidl(pidl, adirW);
        ILFree(pidl);
    }

    hres = IShellFolder_ParseDisplayName(psf, ((void*)0), pbc, afileW, ((void*)0), &pidl, ((void*)0));
    ok(hres == S_OK, "ParseDisplayName failed: 0x%08x\n", hres);
    if(SUCCEEDED(hres)){
        verify_pidl(pidl, afileW);
        ILFree(pidl);
    }

    hres = IShellFolder_ParseDisplayName(psf, ((void*)0), pbc, afile2W, ((void*)0), &pidl, ((void*)0));
    ok(hres == S_OK, "ParseDisplayName failed: 0x%08x\n", hres);
    if(SUCCEEDED(hres)){
        verify_pidl(pidl, afile2W);
        ILFree(pidl);
    }


    pidl = (ITEMIDLIST*)0xdeadbeef;
    fsbdVtbl.GetFindData = fsbd_GetFindData_invalid;
    hres = IShellFolder_ParseDisplayName(psf, ((void*)0), pbc, adirW, ((void*)0), &pidl, ((void*)0));
    ok(hres == S_OK, "ParseDisplayName failed: 0x%08x\n", hres);
    if(SUCCEEDED(hres)){
        verify_pidl(pidl, adirW);
        ILFree(pidl);
    }

    hres = IShellFolder_ParseDisplayName(psf, ((void*)0), pbc, afileW, ((void*)0), &pidl, ((void*)0));
    ok(hres == S_OK, "ParseDisplayName failed: 0x%08x\n", hres);
    if(SUCCEEDED(hres)){
        verify_pidl(pidl, afileW);
        ILFree(pidl);
    }

    hres = IShellFolder_ParseDisplayName(psf, ((void*)0), pbc, afile2W, ((void*)0), &pidl, ((void*)0));
    ok(hres == S_OK, "ParseDisplayName failed: 0x%08x\n", hres);
    if(SUCCEEDED(hres)){
        verify_pidl(pidl, afile2W);
        ILFree(pidl);
    }


    pidl = (ITEMIDLIST*)0xdeadbeef;
    fsbdVtbl.GetFindData = fsbd_GetFindData_valid;
    hres = IShellFolder_ParseDisplayName(psf, ((void*)0), pbc, adirW, ((void*)0), &pidl, ((void*)0));
    ok(hres == S_OK, "ParseDisplayName failed: 0x%08x\n", hres);
    if(SUCCEEDED(hres)){
        verify_pidl(pidl, adirW);
        ILFree(pidl);
    }

    hres = IShellFolder_ParseDisplayName(psf, ((void*)0), pbc, afileW, ((void*)0), &pidl, ((void*)0));
    ok(hres == S_OK, "ParseDisplayName failed: 0x%08x\n", hres);
    if(SUCCEEDED(hres)){
        verify_pidl(pidl, afileW);
        ILFree(pidl);
    }

    hres = IShellFolder_ParseDisplayName(psf, ((void*)0), pbc, afile2W, ((void*)0), &pidl, ((void*)0));
    ok(hres == S_OK, "ParseDisplayName failed: 0x%08x\n", hres);
    if(SUCCEEDED(hres)){
        verify_pidl(pidl, afile2W);
        ILFree(pidl);
    }

    IBindCtx_Release(pbc);
    IShellFolder_Release(psf);
}

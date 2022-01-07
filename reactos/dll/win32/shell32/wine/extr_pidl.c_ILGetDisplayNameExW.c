
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int STRRET ;
typedef int LPWSTR ;
typedef int LPVOID ;
typedef scalar_t__ LPSHELLFOLDER ;
typedef scalar_t__ LPCITEMIDLIST ;
typedef int HRESULT ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int E_FAIL ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ FALSE ;
 int FIXME (char*,int) ;
 int IID_IShellFolder ;



 int IShellFolder_GetDisplayNameOf (scalar_t__,scalar_t__,int,int *) ;
 int IShellFolder_Release (scalar_t__) ;
 int MAX_PATH ;
 int NO_ERROR ;
 int SHBindToParent (scalar_t__,int *,int *,scalar_t__*) ;
 int SHGDN_FORADDRESSBAR ;
 int SHGDN_FORPARSING ;
 int SHGDN_INFOLDER ;
 int SHGDN_NORMAL ;
 int SHGetDesktopFolder (scalar_t__*) ;
 scalar_t__ SUCCEEDED (int ) ;
 int StrRetToStrNW (int ,int ,int *,scalar_t__) ;
 int TRACE (char*,scalar_t__,scalar_t__,int ,...) ;
 int debugstr_w (int ) ;

BOOL ILGetDisplayNameExW(LPSHELLFOLDER psf, LPCITEMIDLIST pidl, LPWSTR path, DWORD type)
{
    LPSHELLFOLDER psfParent, lsf = psf;
    HRESULT ret = NO_ERROR;
    LPCITEMIDLIST pidllast;
    STRRET strret;
    DWORD flag;

    TRACE("%p %p %p %x\n", psf, pidl, path, type);

    if (!pidl || !path)
        return FALSE;

    if (!lsf)
    {
        ret = SHGetDesktopFolder(&lsf);
        if (FAILED(ret))
            return FALSE;
    }

    switch (type)
    {
    case 130:
        flag = SHGDN_FORPARSING | SHGDN_FORADDRESSBAR;
        break;
    case 128:
        flag = SHGDN_NORMAL;
        break;
    case 129:
        flag = SHGDN_INFOLDER;
        break;
    default:
        FIXME("Unknown type parameter = %x\n", type);
        flag = SHGDN_FORPARSING | SHGDN_FORADDRESSBAR;
        break;
    }

    if (!*(const WORD*)pidl || type == 130)
    {
        ret = IShellFolder_GetDisplayNameOf(lsf, pidl, flag, &strret);
        if (SUCCEEDED(ret))
        {
            if(!StrRetToStrNW(path, MAX_PATH, &strret, pidl))
                ret = E_FAIL;
        }
    }
    else
    {
        ret = SHBindToParent(pidl, &IID_IShellFolder, (LPVOID*)&psfParent, &pidllast);
        if (SUCCEEDED(ret))
        {
            ret = IShellFolder_GetDisplayNameOf(psfParent, pidllast, flag, &strret);
            if (SUCCEEDED(ret))
            {
                if(!StrRetToStrNW(path, MAX_PATH, &strret, pidllast))
                    ret = E_FAIL;
            }
            IShellFolder_Release(psfParent);
        }
    }

    TRACE("%p %p %s\n", psf, pidl, debugstr_w(path));

    if (!psf)
        IShellFolder_Release(lsf);
    return SUCCEEDED(ret);
}

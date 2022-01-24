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
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  STRRET ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  scalar_t__ LPSHELLFOLDER ;
typedef  scalar_t__ LPCITEMIDLIST ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  IID_IShellFolder ; 
#define  ILGDN_FORPARSING 130 
#define  ILGDN_INFOLDER 129 
#define  ILGDN_NORMAL 128 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  MAX_PATH ; 
 int /*<<< orphan*/  NO_ERROR ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int SHGDN_FORADDRESSBAR ; 
 int SHGDN_FORPARSING ; 
 int SHGDN_INFOLDER ; 
 int SHGDN_NORMAL ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

BOOL FUNC10(LPSHELLFOLDER psf, LPCITEMIDLIST pidl, LPWSTR path, DWORD type)
{
    LPSHELLFOLDER psfParent, lsf = psf;
    HRESULT ret = NO_ERROR;
    LPCITEMIDLIST pidllast;
    STRRET strret;
    DWORD flag;

    FUNC8("%p %p %p %x\n", psf, pidl, path, type);

    if (!pidl || !path)
        return FALSE;

    if (!lsf)
    {
        ret = FUNC5(&lsf);
        if (FUNC0(ret))
            return FALSE;
    }

    switch (type)
    {
    case ILGDN_FORPARSING:
        flag = SHGDN_FORPARSING | SHGDN_FORADDRESSBAR;
        break;
    case ILGDN_NORMAL:
        flag = SHGDN_NORMAL;
        break;
    case ILGDN_INFOLDER:
        flag = SHGDN_INFOLDER;
        break;
    default:
        FUNC1("Unknown type parameter = %x\n", type);
        flag = SHGDN_FORPARSING | SHGDN_FORADDRESSBAR;
        break;
    }

    if (!*(const WORD*)pidl || type == ILGDN_FORPARSING)
    {
        ret = FUNC2(lsf, pidl, flag, &strret);
        if (FUNC6(ret))
        {
            if(!FUNC7(path, MAX_PATH, &strret, pidl))
                ret = E_FAIL;
        }
    }
    else
    {
        ret = FUNC4(pidl, &IID_IShellFolder, (LPVOID*)&psfParent, &pidllast);
        if (FUNC6(ret))
        {
            ret = FUNC2(psfParent, pidllast, flag, &strret);
            if (FUNC6(ret))
            {
                if(!FUNC7(path, MAX_PATH, &strret, pidllast))
                    ret = E_FAIL;
            }
            FUNC3(psfParent);
        }
    }

    FUNC8("%p %p %s\n", psf, pidl, FUNC9(path));

    if (!psf)
        FUNC3(lsf);
    return FUNC6(ret);
}
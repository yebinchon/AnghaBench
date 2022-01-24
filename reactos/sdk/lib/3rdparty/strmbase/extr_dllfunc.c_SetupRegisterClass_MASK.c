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
typedef  scalar_t__ LPCWSTR ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,long,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  tmodel_keyname ; 

__attribute__((used)) static HRESULT FUNC6(HKEY clsid, LPCWSTR szCLSID,
                                  LPCWSTR szDescription,
                                  LPCWSTR szFileName,
                                  LPCWSTR szServerType,
                                  LPCWSTR szThreadingModel)
{
    HKEY hkey, hsubkey = NULL;
    LONG ret = FUNC2(clsid, szCLSID, &hkey);
    if (ERROR_SUCCESS != ret)
        return FUNC0(ret);

    /* set description string */
    ret = FUNC4(hkey, NULL, REG_SZ, szDescription,
                       sizeof(WCHAR) * (FUNC5(szDescription) + 1));
    if (ERROR_SUCCESS != ret)
        goto err_out;

    /* create CLSID\\{"CLSID"}\\"ServerType" key, using key to CLSID\\{"CLSID"}
       passed back by last call to RegCreateKeyW(). */
    ret = FUNC2(hkey,  szServerType, &hsubkey);
    if (ERROR_SUCCESS != ret)
        goto err_out;

    /* set server path */
    ret = FUNC4(hsubkey, NULL, REG_SZ, szFileName,
                       sizeof(WCHAR) * (FUNC5(szFileName) + 1));
    if (ERROR_SUCCESS != ret)
        goto err_out;

    /* set threading model */
    ret = FUNC3(hsubkey, tmodel_keyname, 0L, REG_SZ,
                         (const BYTE*)szThreadingModel,
                         sizeof(WCHAR) * (FUNC5(szThreadingModel) + 1));
err_out:
    if (hsubkey)
        FUNC1(hsubkey);
    FUNC1(hkey);
    return FUNC0(ret);
}
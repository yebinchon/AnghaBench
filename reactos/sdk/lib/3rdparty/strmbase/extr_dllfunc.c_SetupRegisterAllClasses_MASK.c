#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  m_Name; int /*<<< orphan*/  m_ClsID; } ;
typedef  int /*<<< orphan*/  OLECHAR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  TYPE_1__ FactoryTemplate ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int CHARS_IN_GUID ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  NOERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  clsid_keyname ; 
 int /*<<< orphan*/  ips32_keyname ; 
 int /*<<< orphan*/  tmodel_both ; 

__attribute__((used)) static HRESULT FUNC7(const FactoryTemplate * pList, int num,
                                       LPCWSTR szFileName, BOOL bRegister)
{
    HRESULT hr = NOERROR;
    HKEY hkey;
    OLECHAR szCLSID[CHARS_IN_GUID];
    LONG i, ret = FUNC2(HKEY_CLASSES_ROOT, clsid_keyname, &hkey);
    if (ERROR_SUCCESS != ret)
        return FUNC0(ret);

    for (i = 0; i < num; i++, pList++)
    {
        /* (un)register CLSID and InprocServer32 */
        hr = FUNC6(pList->m_ClsID, szCLSID, CHARS_IN_GUID);
        if (FUNC4(hr))
        {
            if (bRegister )
                hr = FUNC5(hkey, szCLSID,
                                        pList->m_Name, szFileName,
                                        ips32_keyname, tmodel_both);
            else
                hr = FUNC3(hkey, szCLSID);
        }
    }
    FUNC1(hkey);
    return hr;
}
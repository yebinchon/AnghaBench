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
typedef  int /*<<< orphan*/ * HMODULE ;
typedef  int /*<<< orphan*/  ExtendedProxyFileInfo ;

/* Variables and functions */
 scalar_t__ E_ACCESSDENIED ; 
 scalar_t__ E_HANDLE ; 
 scalar_t__ E_NOINTERFACE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  const** proxy_file_list ; 
 int /*<<< orphan*/  const** proxy_file_list2 ; 

__attribute__((used)) static void FUNC4( void )
{
    HRESULT res;
    const ExtendedProxyFileInfo *pf;
    HMODULE hmod = FUNC0(NULL);


    res = FUNC1(NULL, NULL, NULL);
    FUNC3(res == E_HANDLE, "Incorrect return code %x\n",res);
    pf = NULL;
    res = FUNC1(hmod, &pf, NULL);
    FUNC3(res == E_NOINTERFACE, "Incorrect return code %x\n",res);
    res = FUNC1(hmod, proxy_file_list2, NULL);
    FUNC3(res == E_NOINTERFACE, "Incorrect return code %x\n",res);
    /* This fails on Vista and Windows 7 due to permissions */
    res = FUNC1(hmod, proxy_file_list, NULL);
    FUNC3(res == S_OK || res == E_ACCESSDENIED, "NdrDllRegisterProxy failed %x\n",res);
    if (res == S_OK)
    {
        res = FUNC2(hmod,proxy_file_list, NULL);
        FUNC3(res == S_OK, "NdrDllUnregisterProxy failed %x\n",res);
    }
}
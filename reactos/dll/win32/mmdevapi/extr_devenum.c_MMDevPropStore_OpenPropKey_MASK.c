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
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  GUID ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  E_FAIL ; 
 int KEY_READ ; 
 int KEY_WOW64_64KEY ; 
 int KEY_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ eRender ; 
 int /*<<< orphan*/  key_capture ; 
 int /*<<< orphan*/  key_render ; 
 int /*<<< orphan*/ * reg_properties ; 

__attribute__((used)) static HRESULT FUNC5(const GUID *guid, DWORD flow, HKEY *propkey)
{
    WCHAR buffer[39];
    LONG ret;
    HKEY key;
    FUNC2(guid, buffer, 39);
    if ((ret = FUNC1(flow == eRender ? key_render : key_capture, buffer, 0, KEY_READ|KEY_WRITE|KEY_WOW64_64KEY, &key)) != ERROR_SUCCESS)
    {
        FUNC3("Opening key %s failed with %u\n", FUNC4(buffer), ret);
        return E_FAIL;
    }
    ret = FUNC1(key, reg_properties, 0, KEY_READ|KEY_WRITE|KEY_WOW64_64KEY, propkey);
    FUNC0(key);
    if (ret != ERROR_SUCCESS)
    {
        FUNC3("Opening key %s failed with %u\n", FUNC4(reg_properties), ret);
        return E_FAIL;
    }
    return S_OK;
}
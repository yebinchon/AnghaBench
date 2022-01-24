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
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/ * HRSRC ;
typedef  char const* HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCRIPTITEM_GLOBALMEMBERS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char const* S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  global_success_d ; 
 int /*<<< orphan*/  global_success_i ; 
 int /*<<< orphan*/  FUNC8 (int,char*,char const*) ; 
 char* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  strict_dispid_check ; 
 char const* test_name ; 

__attribute__((used)) static void FUNC10(const char *name)
{
    const char *data;
    DWORD size, len;
    BSTR str;
    HRSRC src;
    HRESULT hres;

    strict_dispid_check = FALSE;
    test_name = name;

    src = FUNC1(NULL, name, (LPCSTR)40);
    FUNC8(src != NULL, "Could not find resource %s\n", name);

    size = FUNC5(NULL, src);
    data = FUNC2(NULL, src);

    len = FUNC3(CP_ACP, 0, data, size, NULL, 0);
    str = FUNC6(NULL, len);
    FUNC3(CP_ACP, 0, data, size, str, len);

    FUNC4(global_success_d);
    FUNC4(global_success_i);
    hres = FUNC9(SCRIPTITEM_GLOBALMEMBERS, str, NULL);
    FUNC0(global_success_d);
    FUNC0(global_success_i);

    FUNC8(hres == S_OK, "parse_script failed: %08x\n", hres);
    FUNC7(str);
}
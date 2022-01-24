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
typedef  int /*<<< orphan*/  LPVOID ;
typedef  scalar_t__ LONG_PTR ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IAutoComplete ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_ACLMulti ; 
 int /*<<< orphan*/  CLSID_AutoComplete ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GWLP_USERDATA ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IACList ; 
 int /*<<< orphan*/  IID_IAutoComplete ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ REGDB_E_CLASSNOTREG ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  hEdit ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static IAutoComplete *FUNC7(void)
{
    HRESULT r;
    IAutoComplete *ac, *ac2;
    IUnknown *acSource;
    LONG_PTR user_data;

    /* AutoComplete instance */
    r = FUNC0(&CLSID_AutoComplete, NULL, CLSCTX_INPROC_SERVER,
                         &IID_IAutoComplete, (LPVOID*)&ac);
    if (r == REGDB_E_CLASSNOTREG)
    {
        FUNC6("CLSID_AutoComplete is not registered\n");
        return NULL;
    }
    FUNC5(r == S_OK, "no IID_IAutoComplete (0x%08x)\n", r);

    /* AutoComplete source */
    r = FUNC0(&CLSID_ACLMulti, NULL, CLSCTX_INPROC_SERVER,
                        &IID_IACList, (LPVOID*)&acSource);
    if (r == REGDB_E_CLASSNOTREG)
    {
        FUNC6("CLSID_ACLMulti is not registered\n");
        FUNC3(ac);
        return NULL;
    }
    FUNC5(r == S_OK, "no IID_IACList (0x%08x)\n", r);

    user_data = FUNC1(hEdit, GWLP_USERDATA);
    FUNC5(user_data == 0, "Expected the edit control user data to be zero\n");

    /* bind to edit control */
    r = FUNC2(ac, hEdit, acSource, NULL, NULL);
    FUNC5(r == S_OK, "Init returned 0x%08x\n", r);

    user_data = FUNC1(hEdit, GWLP_USERDATA);
    FUNC5(user_data == 0, "Expected the edit control user data to be zero\n");

    /* bind a different object to the same edit control */
    r = FUNC0(&CLSID_AutoComplete, NULL, CLSCTX_INPROC_SERVER,
                         &IID_IAutoComplete, (LPVOID*)&ac2);
    FUNC5(r == S_OK, "no IID_IAutoComplete (0x%08x)\n", r);

    r = FUNC2(ac2, hEdit, acSource, NULL, NULL);
    FUNC5(r == S_OK, "Init returned 0x%08x\n", r);
    FUNC3(ac2);

    FUNC4(acSource);

    return ac;
}
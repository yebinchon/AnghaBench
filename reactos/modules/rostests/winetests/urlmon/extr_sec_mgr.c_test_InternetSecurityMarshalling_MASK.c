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
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IInternetSecurityManager ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  IID_IInternetSecurityManager ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSHCTX_INPROC ; 
 int /*<<< orphan*/  MSHLFLAGS_NORMAL ; 
 scalar_t__ REGDB_E_IIDNOTREG ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(void)
{
    IInternetSecurityManager *secmgr = NULL;
    IUnknown *unk;
    IStream *stream;
    HRESULT hres;

    FUNC10("testing marshalling...\n");

    hres = FUNC9(NULL, &secmgr, 0);
    FUNC8(hres == S_OK, "CoInternetCreateSecurityManager failed: %08x\n", hres);
    if(FUNC2(hres))
        return;

    hres = FUNC3(secmgr, &IID_IUnknown, (void**)&unk);
    FUNC8(hres == S_OK, "QueryInterface returned: %08x\n", hres);

    hres = FUNC1(NULL, TRUE, &stream);
    FUNC8(hres == S_OK, "CreateStreamOnHGlobal returned: %08x\n", hres);

    hres = FUNC0(stream, &IID_IInternetSecurityManager, unk, MSHCTX_INPROC, NULL, MSHLFLAGS_NORMAL);
    /* Not supported in W98 */
    FUNC8(hres == S_OK || FUNC7(hres == REGDB_E_IIDNOTREG),
        "CoMarshalInterface returned: %08x\n", hres);

    FUNC5(stream);
    FUNC6(unk);
    FUNC4(secmgr);
}
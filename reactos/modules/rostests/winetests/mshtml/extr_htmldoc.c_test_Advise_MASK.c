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
typedef  int /*<<< orphan*/  IOleObject ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  int /*<<< orphan*/  IEnumSTATDATA ;
typedef  int /*<<< orphan*/  IAdviseSink ;
typedef  int HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  AdviseSink ; 
 int E_INVALIDARG ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IOleObject ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int OLE_E_NOCONNECTION ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 

__attribute__((used)) static void FUNC7(IHTMLDocument2 *doc)
{
    IOleObject *oleobj = NULL;
    IEnumSTATDATA *enum_advise = (void*)0xdeadbeef;
    DWORD conn;
    HRESULT hres;

    hres = FUNC1(doc, &IID_IOleObject, (void**)&oleobj);
    FUNC6(hres == S_OK, "QueryInterface(IID_IOleObject) failed: %08x\n", hres);
    if(FUNC0(hres))
        return;

    hres = FUNC5(oleobj, 0);
    FUNC6(hres == OLE_E_NOCONNECTION, "Unadvise returned: %08x\n", hres);

    hres = FUNC3(oleobj, &enum_advise);
    FUNC6(hres == S_OK, "EnumAdvise returned: %08x\n", hres);
    FUNC6(enum_advise == NULL, "enum_advise != NULL\n");

    conn = -1;
    hres = FUNC2(oleobj, NULL, &conn);
    /* Old IE returns S_OK and sets conn to 1 */
    FUNC6(hres == E_INVALIDARG || hres == S_OK, "Advise returned: %08x\n", hres);
    FUNC6(conn == 0 || conn == 1, "conn = %d\n", conn);

    hres = FUNC2(oleobj, (IAdviseSink*)&AdviseSink, NULL);
    FUNC6(hres == E_INVALIDARG, "Advise returned: %08x\n", hres);

    hres = FUNC2(oleobj, (IAdviseSink*)&AdviseSink, &conn);
    FUNC6(hres == S_OK, "Advise returned: %08x\n", hres);
    FUNC6(conn == 1, "conn = %d\n", conn);

    hres = FUNC2(oleobj, (IAdviseSink*)&AdviseSink, &conn);
    FUNC6(hres == S_OK, "Advise returned: %08x\n", hres);
    FUNC6(conn == 2, "conn = %d\n", conn);

    hres = FUNC5(oleobj, 1);
    FUNC6(hres == S_OK, "Unadvise returned: %08x\n", hres);

    hres = FUNC5(oleobj, 1);
    FUNC6(hres == OLE_E_NOCONNECTION, "Unadvise returned: %08x\n", hres);

    hres = FUNC5(oleobj, 2);
    FUNC6(hres == S_OK, "Unadvise returned: %08x\n", hres);

    FUNC4(oleobj);
}
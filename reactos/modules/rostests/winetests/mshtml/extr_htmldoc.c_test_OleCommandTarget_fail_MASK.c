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
struct TYPE_3__ {int member_0; int member_1; int cmdID; scalar_t__ cmdf; } ;
typedef  TYPE_1__ OLECMD ;
typedef  int /*<<< orphan*/  IOleCommandTarget ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IHTMLDocument2 ; 
 int /*<<< orphan*/  IID_IOleCommandTarget ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ OLECMDERR_E_NOTSUPPORTED ; 
 scalar_t__ OLECMDERR_E_UNKNOWNGROUP ; 
 int /*<<< orphan*/  OLECMDEXECOPT_DODEFAULT ; 
 scalar_t__ OLECMDF_SUPPORTED ; 
 int OLECMDID_GETPRINTTEMPLATE ; 
 int OLECMDID_OPEN ; 
 int OLECMDID_UPDATECOMMANDS ; 
 int /*<<< orphan*/  QueryStatus_OPEN ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * expect_cmds ; 
 int /*<<< orphan*/  FUNC7 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC8(IHTMLDocument2 *doc)
{
    IOleCommandTarget *cmdtrg;
    int i;
    HRESULT hres;

    OLECMD cmd[2] = {
        {OLECMDID_OPEN, 0xf0f0},
        {OLECMDID_GETPRINTTEMPLATE+1, 0xf0f0}
    };

    hres = FUNC2(doc, &IID_IOleCommandTarget, (void**)&cmdtrg);
    FUNC7(hres == S_OK, "QueryInterface(IIDIOleCommandTarget failed: %08x\n", hres);
    if(FUNC1(hres))
        return;

    hres = FUNC4(cmdtrg, NULL, 0, NULL, NULL);
    FUNC7(hres == S_OK, "QueryStatus failed: %08x\n", hres);

    FUNC6(QueryStatus_OPEN);
    hres = FUNC4(cmdtrg, NULL, 2, cmd, NULL);
    FUNC0(QueryStatus_OPEN);

    FUNC7(hres == OLECMDERR_E_NOTSUPPORTED,
            "QueryStatus failed: %08x, expected OLECMDERR_E_NOTSUPPORTED\n", hres);
    FUNC7(cmd[1].cmdID == OLECMDID_GETPRINTTEMPLATE+1,
            "cmd[0].cmdID=%d, expected OLECMDID_GETPRINTTEMPLATE+1\n", cmd[0].cmdID);
    FUNC7(cmd[1].cmdf == 0, "cmd[0].cmdf=%x, expected 0\n", cmd[0].cmdf);
    FUNC7(cmd[0].cmdf == OLECMDF_SUPPORTED,
            "cmd[1].cmdf=%x, expected OLECMDF_SUPPORTED\n", cmd[1].cmdf);

    hres = FUNC4(cmdtrg, &IID_IHTMLDocument2, 2, cmd, NULL);
    FUNC7(hres == OLECMDERR_E_UNKNOWNGROUP,
            "QueryStatus failed: %08x, expected OLECMDERR_E_UNKNOWNGROUP\n", hres);

    for(i=0; i<OLECMDID_GETPRINTTEMPLATE; i++) {
        if(!expect_cmds[i]) {
            hres = FUNC3(cmdtrg, NULL, OLECMDID_UPDATECOMMANDS,
                    OLECMDEXECOPT_DODEFAULT, NULL, NULL);
            FUNC7(hres == OLECMDERR_E_NOTSUPPORTED,
                    "Exec failed: %08x, expected OLECMDERR_E_NOTSUPPORTED\n", hres);
        }
    }

    hres = FUNC3(cmdtrg, NULL, OLECMDID_GETPRINTTEMPLATE+1,
            OLECMDEXECOPT_DODEFAULT, NULL, NULL);
    FUNC7(hres == OLECMDERR_E_NOTSUPPORTED,
            "Exec failed: %08x, expected OLECMDERR_E_NOTSUPPORTED\n", hres);

    FUNC5(cmdtrg);
}
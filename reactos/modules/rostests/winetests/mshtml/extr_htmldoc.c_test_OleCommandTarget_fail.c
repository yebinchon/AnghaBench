
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; int member_1; int cmdID; scalar_t__ cmdf; } ;
typedef TYPE_1__ OLECMD ;
typedef int IOleCommandTarget ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ HRESULT ;


 int CHECK_CALLED (int ) ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ IHTMLDocument2_QueryInterface (int *,int *,void**) ;
 int IID_IHTMLDocument2 ;
 int IID_IOleCommandTarget ;
 scalar_t__ IOleCommandTarget_Exec (int *,int *,int,int ,int *,int *) ;
 scalar_t__ IOleCommandTarget_QueryStatus (int *,int *,int,TYPE_1__*,int *) ;
 int IOleCommandTarget_Release (int *) ;
 scalar_t__ OLECMDERR_E_NOTSUPPORTED ;
 scalar_t__ OLECMDERR_E_UNKNOWNGROUP ;
 int OLECMDEXECOPT_DODEFAULT ;
 scalar_t__ OLECMDF_SUPPORTED ;
 int OLECMDID_GETPRINTTEMPLATE ;
 int OLECMDID_OPEN ;
 int OLECMDID_UPDATECOMMANDS ;
 int QueryStatus_OPEN ;
 int SET_EXPECT (int ) ;
 scalar_t__ S_OK ;
 int * expect_cmds ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_OleCommandTarget_fail(IHTMLDocument2 *doc)
{
    IOleCommandTarget *cmdtrg;
    int i;
    HRESULT hres;

    OLECMD cmd[2] = {
        {OLECMDID_OPEN, 0xf0f0},
        {OLECMDID_GETPRINTTEMPLATE+1, 0xf0f0}
    };

    hres = IHTMLDocument2_QueryInterface(doc, &IID_IOleCommandTarget, (void**)&cmdtrg);
    ok(hres == S_OK, "QueryInterface(IIDIOleCommandTarget failed: %08x\n", hres);
    if(FAILED(hres))
        return;

    hres = IOleCommandTarget_QueryStatus(cmdtrg, ((void*)0), 0, ((void*)0), ((void*)0));
    ok(hres == S_OK, "QueryStatus failed: %08x\n", hres);

    SET_EXPECT(QueryStatus_OPEN);
    hres = IOleCommandTarget_QueryStatus(cmdtrg, ((void*)0), 2, cmd, ((void*)0));
    CHECK_CALLED(QueryStatus_OPEN);

    ok(hres == OLECMDERR_E_NOTSUPPORTED,
            "QueryStatus failed: %08x, expected OLECMDERR_E_NOTSUPPORTED\n", hres);
    ok(cmd[1].cmdID == OLECMDID_GETPRINTTEMPLATE+1,
            "cmd[0].cmdID=%d, expected OLECMDID_GETPRINTTEMPLATE+1\n", cmd[0].cmdID);
    ok(cmd[1].cmdf == 0, "cmd[0].cmdf=%x, expected 0\n", cmd[0].cmdf);
    ok(cmd[0].cmdf == OLECMDF_SUPPORTED,
            "cmd[1].cmdf=%x, expected OLECMDF_SUPPORTED\n", cmd[1].cmdf);

    hres = IOleCommandTarget_QueryStatus(cmdtrg, &IID_IHTMLDocument2, 2, cmd, ((void*)0));
    ok(hres == OLECMDERR_E_UNKNOWNGROUP,
            "QueryStatus failed: %08x, expected OLECMDERR_E_UNKNOWNGROUP\n", hres);

    for(i=0; i<OLECMDID_GETPRINTTEMPLATE; i++) {
        if(!expect_cmds[i]) {
            hres = IOleCommandTarget_Exec(cmdtrg, ((void*)0), OLECMDID_UPDATECOMMANDS,
                    OLECMDEXECOPT_DODEFAULT, ((void*)0), ((void*)0));
            ok(hres == OLECMDERR_E_NOTSUPPORTED,
                    "Exec failed: %08x, expected OLECMDERR_E_NOTSUPPORTED\n", hres);
        }
    }

    hres = IOleCommandTarget_Exec(cmdtrg, ((void*)0), OLECMDID_GETPRINTTEMPLATE+1,
            OLECMDEXECOPT_DODEFAULT, ((void*)0), ((void*)0));
    ok(hres == OLECMDERR_E_NOTSUPPORTED,
            "Exec failed: %08x, expected OLECMDERR_E_NOTSUPPORTED\n", hres);

    IOleCommandTarget_Release(cmdtrg);
}

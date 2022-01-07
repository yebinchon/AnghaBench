
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IOleObject ;
typedef int IHTMLDocument2 ;
typedef int IEnumSTATDATA ;
typedef int IAdviseSink ;
typedef int HRESULT ;
typedef int DWORD ;


 int AdviseSink ;
 int E_INVALIDARG ;
 scalar_t__ FAILED (int) ;
 int IHTMLDocument2_QueryInterface (int *,int *,void**) ;
 int IID_IOleObject ;
 int IOleObject_Advise (int *,int *,int*) ;
 int IOleObject_EnumAdvise (int *,int **) ;
 int IOleObject_Release (int *) ;
 int IOleObject_Unadvise (int *,int) ;
 int OLE_E_NOCONNECTION ;
 int S_OK ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_Advise(IHTMLDocument2 *doc)
{
    IOleObject *oleobj = ((void*)0);
    IEnumSTATDATA *enum_advise = (void*)0xdeadbeef;
    DWORD conn;
    HRESULT hres;

    hres = IHTMLDocument2_QueryInterface(doc, &IID_IOleObject, (void**)&oleobj);
    ok(hres == S_OK, "QueryInterface(IID_IOleObject) failed: %08x\n", hres);
    if(FAILED(hres))
        return;

    hres = IOleObject_Unadvise(oleobj, 0);
    ok(hres == OLE_E_NOCONNECTION, "Unadvise returned: %08x\n", hres);

    hres = IOleObject_EnumAdvise(oleobj, &enum_advise);
    ok(hres == S_OK, "EnumAdvise returned: %08x\n", hres);
    ok(enum_advise == ((void*)0), "enum_advise != NULL\n");

    conn = -1;
    hres = IOleObject_Advise(oleobj, ((void*)0), &conn);

    ok(hres == E_INVALIDARG || hres == S_OK, "Advise returned: %08x\n", hres);
    ok(conn == 0 || conn == 1, "conn = %d\n", conn);

    hres = IOleObject_Advise(oleobj, (IAdviseSink*)&AdviseSink, ((void*)0));
    ok(hres == E_INVALIDARG, "Advise returned: %08x\n", hres);

    hres = IOleObject_Advise(oleobj, (IAdviseSink*)&AdviseSink, &conn);
    ok(hres == S_OK, "Advise returned: %08x\n", hres);
    ok(conn == 1, "conn = %d\n", conn);

    hres = IOleObject_Advise(oleobj, (IAdviseSink*)&AdviseSink, &conn);
    ok(hres == S_OK, "Advise returned: %08x\n", hres);
    ok(conn == 2, "conn = %d\n", conn);

    hres = IOleObject_Unadvise(oleobj, 1);
    ok(hres == S_OK, "Unadvise returned: %08x\n", hres);

    hres = IOleObject_Unadvise(oleobj, 1);
    ok(hres == OLE_E_NOCONNECTION, "Unadvise returned: %08x\n", hres);

    hres = IOleObject_Unadvise(oleobj, 2);
    ok(hres == S_OK, "Unadvise returned: %08x\n", hres);

    IOleObject_Release(oleobj);
}

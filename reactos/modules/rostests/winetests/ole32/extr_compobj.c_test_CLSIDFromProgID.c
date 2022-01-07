
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int clsid ;
typedef int ULONG_PTR ;
struct TYPE_12__ {int* Data4; } ;
typedef scalar_t__ HRESULT ;
typedef int HANDLE ;
typedef TYPE_1__ GUID ;
typedef TYPE_1__ CLSID ;


 scalar_t__ CLSIDFromProgID (int *,TYPE_1__*) ;
 scalar_t__ CLSIDFromString (int *,TYPE_1__*) ;
 TYPE_1__ CLSID_NULL ;
 TYPE_1__ CLSID_StdFont ;
 TYPE_1__ CLSID_non_existent ;
 scalar_t__ CO_E_CLASSSTRING ;
 scalar_t__ E_INVALIDARG ;
 int IsEqualCLSID (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ S_OK ;
 int actctx_manifest ;
 int activate_context (int ,int *) ;
 int memset (TYPE_1__*,int,int) ;
 int ok (int,char*,...) ;
 int ok_ole_success (scalar_t__,char*) ;
 int pDeactivateActCtx (int ,int ) ;
 int pReleaseActCtx (int ) ;
 int * progidW ;
 int * stdfont ;
 scalar_t__ wine_dbgstr_guid (TYPE_1__*) ;
 int * wszNonExistent ;

__attribute__((used)) static void test_CLSIDFromProgID(void)
{
    ULONG_PTR cookie = 0;
    HANDLE handle;
    CLSID clsid;
    HRESULT hr = CLSIDFromProgID(stdfont, &clsid);
    ok(hr == S_OK, "CLSIDFromProgID failed with error 0x%08x\n", hr);
    ok(IsEqualCLSID(&clsid, &CLSID_StdFont), "clsid wasn't equal to CLSID_StdFont\n");

    hr = CLSIDFromString(stdfont, &clsid);
    ok_ole_success(hr, "CLSIDFromString");
    ok(IsEqualCLSID(&clsid, &CLSID_StdFont), "clsid wasn't equal to CLSID_StdFont\n");



    hr = CLSIDFromProgID(wszNonExistent, ((void*)0));
    ok(hr == E_INVALIDARG, "CLSIDFromProgID should have returned E_INVALIDARG instead of 0x%08x\n", hr);

    hr = CLSIDFromProgID(((void*)0), &clsid);
    ok(hr == E_INVALIDARG, "CLSIDFromProgID should have returned E_INVALIDARG instead of 0x%08x\n", hr);

    memset(&clsid, 0xcc, sizeof(clsid));
    hr = CLSIDFromProgID(wszNonExistent, &clsid);
    ok(hr == CO_E_CLASSSTRING, "CLSIDFromProgID on nonexistent ProgID should have returned CO_E_CLASSSTRING instead of 0x%08x\n", hr);
    ok(IsEqualCLSID(&clsid, &CLSID_NULL), "CLSIDFromProgID should have set clsid to all-zeros on failure\n");


    memset(&clsid, 0xcc, sizeof(clsid));
    hr = CLSIDFromProgID(progidW, &clsid);
    ok(hr == CO_E_CLASSSTRING, "got 0x%08x\n", hr);
    ok(IsEqualCLSID(&clsid, &CLSID_NULL), "wrong clsid\n");

    if ((handle = activate_context(actctx_manifest, &cookie)))
    {
        GUID clsid1;

        memset(&clsid, 0xcc, sizeof(clsid));
        hr = CLSIDFromProgID(wszNonExistent, &clsid);
        ok(hr == CO_E_CLASSSTRING, "got 0x%08x\n", hr);
        ok(IsEqualCLSID(&clsid, &CLSID_NULL), "should have zero CLSID on failure\n");


        hr = CLSIDFromString(progidW, &clsid);
        ok(hr == CO_E_CLASSSTRING, "got 0x%08x\n", hr);

        clsid = CLSID_NULL;
        hr = CLSIDFromProgID(progidW, &clsid);
        ok(hr == S_OK, "got 0x%08x\n", hr);

        ok(!IsEqualCLSID(&clsid, &CLSID_non_existent) && !IsEqualCLSID(&clsid, &CLSID_NULL),
                 "got wrong clsid %s\n", wine_dbgstr_guid(&clsid));


        clsid = CLSID_NULL;
        hr = CLSIDFromProgID(stdfont, &clsid);
        ok(hr == S_OK, "got 0x%08x\n", hr);
        clsid1 = CLSID_StdFont;

        clsid1.Data4[7] = 0x52;
        ok(!IsEqualCLSID(&clsid, &CLSID_StdFont) && !IsEqualCLSID(&clsid, &CLSID_NULL) && !IsEqualCLSID(&clsid, &clsid1),
            "got %s\n", wine_dbgstr_guid(&clsid));

        pDeactivateActCtx(0, cookie);
        pReleaseActCtx(handle);
    }
}

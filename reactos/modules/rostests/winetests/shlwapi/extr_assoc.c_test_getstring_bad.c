
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int HRESULT ;
typedef int DWORD ;


 int ARRAY_SIZE (char const*) ;
 int ASSOCSTR_EXECUTABLE ;
 int ASSOCSTR_FRIENDLYAPPNAME ;
 int ERROR_FILE_NOT_FOUND ;
 int ERROR_NOT_FOUND ;
 int ERROR_NO_ASSOCIATION ;
 int E_FAIL ;
 int E_INVALIDARG ;
 int E_UNEXPECTED ;
 int HRESULT_FROM_WIN32 (int ) ;
 int MAX_PATH ;
 int S_FALSE ;
 int S_OK ;
 int * badBad ;
 int * dotBad ;
 int * dotHtml ;
 int expect_hr (int,int) ;
 int invalid ;
 int lstrcmpiW (char*,char const*) ;
 int ok (int,char*,...) ;
 int open ;
 int pAssocQueryStringW (int ,int ,int *,int ,char*,int*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_getstring_bad(void)
{
    static const WCHAR openwith[] = {'O','p','e','n','W','i','t','h','.','e','x','e',0};
    WCHAR buf[MAX_PATH];
    HRESULT hr;
    DWORD len;

    if (!pAssocQueryStringW)
    {
        win_skip("AssocQueryStringW() is missing\n");
        return;
    }

    len = 0xdeadbeef;
    hr = pAssocQueryStringW(0, ASSOCSTR_EXECUTABLE, ((void*)0), open, ((void*)0), &len);
    expect_hr(E_INVALIDARG, hr);
    ok(len == 0xdeadbeef, "got %u\n", len);

    len = 0xdeadbeef;
    hr = pAssocQueryStringW(0, ASSOCSTR_EXECUTABLE, badBad, open, ((void*)0), &len);
    ok(hr == E_FAIL ||
       hr == HRESULT_FROM_WIN32(ERROR_NO_ASSOCIATION),
       "Unexpected result : %08x\n", hr);
    ok(len == 0xdeadbeef, "got %u\n", len);

    len = ARRAY_SIZE(buf);
    hr = pAssocQueryStringW(0, ASSOCSTR_EXECUTABLE, dotBad, open, buf, &len);
    ok(hr == E_FAIL ||
       hr == HRESULT_FROM_WIN32(ERROR_NO_ASSOCIATION) ||
       hr == S_OK ,
       "Unexpected result : %08x\n", hr);
    if (hr == S_OK)
    {
        ok(len < ARRAY_SIZE(buf), "got %u\n", len);
        ok(!lstrcmpiW(buf + len - ARRAY_SIZE(openwith), openwith), "wrong data\n");
    }

    len = 0xdeadbeef;
    hr = pAssocQueryStringW(0, ASSOCSTR_EXECUTABLE, dotHtml, invalid, ((void*)0), &len);
    ok(hr == HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND) ||
       hr == HRESULT_FROM_WIN32(ERROR_NO_ASSOCIATION),
       "Unexpected result : %08x\n", hr);
    ok(len == 0xdeadbeef, "got %u\n", len);

    hr = pAssocQueryStringW(0, ASSOCSTR_EXECUTABLE, dotHtml, open, ((void*)0), ((void*)0));
    ok(hr == E_UNEXPECTED ||
       hr == E_INVALIDARG,
       "Unexpected result : %08x\n", hr);

    len = 0xdeadbeef;
    hr = pAssocQueryStringW(0, ASSOCSTR_FRIENDLYAPPNAME, ((void*)0), open, ((void*)0), &len);
    expect_hr(E_INVALIDARG, hr);
    ok(len == 0xdeadbeef, "got %u\n", len);

    len = 0xdeadbeef;
    hr = pAssocQueryStringW(0, ASSOCSTR_FRIENDLYAPPNAME, badBad, open, ((void*)0), &len);
    ok(hr == E_FAIL ||
       hr == HRESULT_FROM_WIN32(ERROR_NO_ASSOCIATION),
       "Unexpected result : %08x\n", hr);
    ok(len == 0xdeadbeef, "got %u\n", len);

    len = 0xdeadbeef;
    hr = pAssocQueryStringW(0, ASSOCSTR_FRIENDLYAPPNAME, dotBad, open, ((void*)0), &len);
    ok(hr == E_FAIL ||
       hr == HRESULT_FROM_WIN32(ERROR_NO_ASSOCIATION) ||
       hr == HRESULT_FROM_WIN32(ERROR_NOT_FOUND) ||
       hr == S_FALSE,
       "Unexpected result : %08x\n", hr);
    ok((hr == S_FALSE && len < ARRAY_SIZE(buf)) || len == 0xdeadbeef,
       "got hr=%08x and len=%u\n", hr, len);

    len = 0xdeadbeef;
    hr = pAssocQueryStringW(0, ASSOCSTR_FRIENDLYAPPNAME, dotHtml, invalid, ((void*)0), &len);
    ok(hr == HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND) ||
       hr == HRESULT_FROM_WIN32(ERROR_NO_ASSOCIATION) ||
       hr == E_FAIL,
       "Unexpected result : %08x\n", hr);
    ok(len == 0xdeadbeef, "got %u\n", len);

    hr = pAssocQueryStringW(0, ASSOCSTR_FRIENDLYAPPNAME, dotHtml, open, ((void*)0), ((void*)0));
    ok(hr == E_UNEXPECTED ||
       hr == E_INVALIDARG,
       "Unexpected result : %08x\n", hr);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 int ASSOCSTR_EXECUTABLE ;
 int ASSOCSTR_FRIENDLYAPPNAME ;
 int ERROR_FILE_NOT_FOUND ;
 int ERROR_NOT_FOUND ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 scalar_t__ HRESULT_FROM_WIN32 (int ) ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 int dotHtml ;
 int expect (int,int) ;
 int expect_hr (scalar_t__,scalar_t__) ;
 int lstrlenW (int *) ;
 int ok (int,char*,scalar_t__) ;
 int open ;
 scalar_t__ pAssocQueryStringW (int ,int ,int ,int ,int *,int*) ;
 int skip (char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_getstring_basic(void)
{
    HRESULT hr;
    WCHAR * friendlyName;
    WCHAR * executableName;
    DWORD len, len2, slen;

    if (!pAssocQueryStringW)
    {
        win_skip("AssocQueryStringW() is missing\n");
        return;
    }

    hr = pAssocQueryStringW(0, ASSOCSTR_EXECUTABLE, dotHtml, open, ((void*)0), &len);
    expect_hr(S_FALSE, hr);
    if (hr != S_FALSE)
    {
        skip("failed to get initial len\n");
        return;
    }

    executableName = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY,
                               len * sizeof(WCHAR));
    if (!executableName)
    {
        skip("failed to allocate memory\n");
        return;
    }

    len2 = len;
    hr = pAssocQueryStringW(0, ASSOCSTR_EXECUTABLE, dotHtml, open,
                           executableName, &len2);
    expect_hr(S_OK, hr);
    slen = lstrlenW(executableName) + 1;
    expect(len, len2);
    expect(len, slen);

    hr = pAssocQueryStringW(0, ASSOCSTR_FRIENDLYAPPNAME, dotHtml, open, ((void*)0),
                           &len);
    ok(hr == S_FALSE ||
       hr == HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND) ||
       hr == HRESULT_FROM_WIN32(ERROR_NOT_FOUND),
       "Unexpected result : %08x\n", hr);
    if (hr != S_FALSE)
    {
        HeapFree(GetProcessHeap(), 0, executableName);
        skip("failed to get initial len\n");
        return;
    }

    friendlyName = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY,
                               len * sizeof(WCHAR));
    if (!friendlyName)
    {
        HeapFree(GetProcessHeap(), 0, executableName);
        skip("failed to allocate memory\n");
        return;
    }

    len2 = len;
    hr = pAssocQueryStringW(0, ASSOCSTR_FRIENDLYAPPNAME, dotHtml, open,
                           friendlyName, &len2);
    expect_hr(S_OK, hr);
    slen = lstrlenW(friendlyName) + 1;
    expect(len, len2);
    expect(len, slen);

    HeapFree(GetProcessHeap(), 0, executableName);
    HeapFree(GetProcessHeap(), 0, friendlyName);
}

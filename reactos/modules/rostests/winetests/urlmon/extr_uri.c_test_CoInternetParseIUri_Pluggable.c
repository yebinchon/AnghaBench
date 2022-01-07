
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int IUri ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ DWORD ;


 int CHECK_CALLED (int ) ;
 int IUri_Release (int *) ;
 int PARSE_CANONICALIZE ;
 int ParseUrl ;
 int SET_EXPECT (int ) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int URL_ESCAPE_UNSAFE ;
 int URL_UNESCAPE ;
 int lstrcmpW (int *,int *) ;
 scalar_t__ lstrlenW (int *) ;
 int ok (int,char*,scalar_t__,...) ;
 scalar_t__ pCoInternetParseIUri (int *,int ,int,int *,int,scalar_t__*,int ) ;
 scalar_t__ pCreateUri (int ,int ,int ,int **) ;
 int parse_action ;
 int parse_flags ;
 int * parse_resultW ;
 int parse_urlW ;
 scalar_t__ wine_dbgstr_w (int *) ;

__attribute__((used)) static void test_CoInternetParseIUri_Pluggable(void) {
    HRESULT hr;
    IUri *uri = ((void*)0);

    hr = pCreateUri(parse_urlW, 0, 0, &uri);
    ok(SUCCEEDED(hr), "Error: Expected CreateUri to succeed, but got 0x%08x.\n", hr);
    if(SUCCEEDED(hr)) {
        WCHAR result[200];
        DWORD result_len;

        SET_EXPECT(ParseUrl);

        parse_action = PARSE_CANONICALIZE;
        parse_flags = URL_UNESCAPE|URL_ESCAPE_UNSAFE;

        hr = pCoInternetParseIUri(uri, parse_action, parse_flags, result, 200, &result_len, 0);
        ok(hr == S_OK, "Error: CoInternetParseIUri returned 0x%08x, expected 0x%08x.\n", hr, S_OK);

        CHECK_CALLED(ParseUrl);

        if(SUCCEEDED(hr)) {
            ok(result_len == lstrlenW(parse_resultW), "Error: Expected %d, but got %d.\n",
                lstrlenW(parse_resultW), result_len);
            ok(!lstrcmpW(result, parse_resultW), "Error: Expected %s, but got %s.\n",
                wine_dbgstr_w(parse_resultW), wine_dbgstr_w(result));
        }
    }
    if(uri) IUri_Release(uri);
}

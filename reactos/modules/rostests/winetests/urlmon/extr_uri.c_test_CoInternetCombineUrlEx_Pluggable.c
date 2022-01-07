
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUri ;
typedef int HRESULT ;
typedef int * BSTR ;


 int CHECK_CALLED (int ) ;
 int CombineUrl ;
 int IUri_GetAbsoluteUri (int *,int **) ;
 int IUri_Release (int *) ;
 int SET_EXPECT (int ) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int SysFreeString (int *) ;
 int URL_DONT_SIMPLIFY ;
 int URL_DONT_UNESCAPE_EXTRA_INFO ;
 int URL_FILE_USE_PATHURL ;
 int combine_baseW ;
 int combine_relativeW ;
 int * combine_resultW ;
 int lstrcmpW (int *,int *) ;
 int ok (int,char*,int ,...) ;
 int pCoInternetCombineUrlEx (int *,int ,int,int **,int ) ;
 int pCreateUri (int ,int ,int ,int **) ;
 int wine_dbgstr_w (int *) ;

__attribute__((used)) static void test_CoInternetCombineUrlEx_Pluggable(void) {
    HRESULT hr;
    IUri *base = ((void*)0);

    hr = pCreateUri(combine_baseW, 0, 0, &base);
    ok(SUCCEEDED(hr), "Error: CreateUri returned 0x%08x.\n", hr);
    if(SUCCEEDED(hr)) {
        IUri *result = ((void*)0);

        SET_EXPECT(CombineUrl);

        hr = pCoInternetCombineUrlEx(base, combine_relativeW, URL_DONT_SIMPLIFY|URL_FILE_USE_PATHURL|URL_DONT_UNESCAPE_EXTRA_INFO,
                                     &result, 0);
        ok(hr == S_OK, "Error: CoInternetCombineUrlEx returned 0x%08x, expected 0x%08x.\n", hr, S_OK);

        CHECK_CALLED(CombineUrl);

        if(SUCCEEDED(hr)) {
            BSTR received = ((void*)0);
            hr = IUri_GetAbsoluteUri(result, &received);
            ok(hr == S_OK, "Error: Expected S_OK, but got 0x%08x instead.\n", hr);
            if(SUCCEEDED(hr)) {
                ok(!lstrcmpW(combine_resultW, received), "Error: Expected %s, but got %s.\n",
                    wine_dbgstr_w(combine_resultW), wine_dbgstr_w(received));
            }
            SysFreeString(received);
        }
        if(result) IUri_Release(result);
    }
    if(base) IUri_Release(base);
}

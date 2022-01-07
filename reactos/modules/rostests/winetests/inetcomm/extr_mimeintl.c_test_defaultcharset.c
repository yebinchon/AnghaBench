
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IMimeInternational ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ HCHARSET ;


 int CHARSET_BODY ;
 int GetACP () ;
 scalar_t__ IMimeInternational_FindCharset (int *,char*,scalar_t__*) ;
 scalar_t__ IMimeInternational_GetCodePageCharset (int *,int ,int ,scalar_t__*) ;
 scalar_t__ IMimeInternational_GetDefaultCharset (int *,scalar_t__*) ;
 int IMimeInternational_Release (int *) ;
 scalar_t__ IMimeInternational_SetDefaultCharset (int *,scalar_t__) ;
 scalar_t__ MimeOleGetInternat (int **) ;
 scalar_t__ S_OK ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_defaultcharset(void)
{
    IMimeInternational *internat;
    HRESULT hr;
    HCHARSET hcs_default, hcs, hcs_windows_1251;

    hr = MimeOleGetInternat(&internat);
    ok(hr == S_OK, "ret %08x\n", hr);

    hr = IMimeInternational_GetDefaultCharset(internat, &hcs_default);
    ok(hr == S_OK, "ret %08x\n", hr);
    hr = IMimeInternational_GetCodePageCharset(internat, GetACP(), CHARSET_BODY, &hcs);
    ok(hr == S_OK, "ret %08x\n", hr);
    ok(hcs_default == hcs, "Unexpected default charset\n");

    hr = IMimeInternational_FindCharset(internat, "windows-1251", &hcs_windows_1251);
    ok(hr == S_OK, "got %08x\n", hr);
    hr = IMimeInternational_SetDefaultCharset(internat, hcs_windows_1251);
    ok(hr == S_OK, "ret %08x\n", hr);
    hr = IMimeInternational_GetDefaultCharset(internat, &hcs);
    ok(hr == S_OK, "ret %08x\n", hr);
    ok(hcs == hcs_windows_1251, "didn't retrieve recently set default\n");

    hr = IMimeInternational_SetDefaultCharset(internat, hcs_default);
    ok(hr == S_OK, "ret %08x\n", hr);

    IMimeInternational_Release(internat);
}

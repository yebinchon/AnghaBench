
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int IInternetProtocol ;
typedef scalar_t__ HRESULT ;


 int CHECK_CALLED (int ) ;
 int FALSE ;
 int GetBindInfo ;
 scalar_t__ IInternetProtocol_Start (int *,int const*,int *,int *,int ,int ) ;
 int ReportData ;
 int ReportProgress ;
 int ReportResult ;
 int SET_EXPECT (int ) ;
 scalar_t__ S_OK ;
 int bind_info ;
 scalar_t__ expect_hrResult ;
 int expect_hr_win32err ;
 int ok (int,char*,scalar_t__) ;
 int protocol_sink ;

__attribute__((used)) static void protocol_start(IInternetProtocol *protocol, const WCHAR *url)
{
    HRESULT hres;

    SET_EXPECT(GetBindInfo);
    SET_EXPECT(ReportResult);
    SET_EXPECT(ReportProgress);
    SET_EXPECT(ReportData);
    expect_hrResult = S_OK;
    expect_hr_win32err = FALSE;

    hres = IInternetProtocol_Start(protocol, url, &protocol_sink, &bind_info, 0, 0);
    ok(hres == S_OK, "Start failed: %08x\n", hres);

    CHECK_CALLED(GetBindInfo);
    CHECK_CALLED(ReportProgress);
    CHECK_CALLED(ReportData);
    CHECK_CALLED(ReportResult);
}

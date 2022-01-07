
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;
typedef int IUri ;
typedef int IInternetProtocolEx ;
typedef int IInternetProtocol ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ BOOL ;


 int BINDF_FROMURLMON ;
 int CHECK_CALLED (int ) ;
 int CLEAR_CALLED (int ) ;
 scalar_t__ FALSE ;
 int GetBindInfo ;
 scalar_t__ IInternetProtocolEx_StartEx (int *,int *,int *,int *,int ,int ) ;
 scalar_t__ IInternetProtocol_Start (int *,int ,int *,int *,int ,int ) ;
 scalar_t__ INET_E_RESOURCE_NOT_FOUND ;
 int ReportData ;
 int ReportProgress_CACHEFILENAMEAVAILABLE ;
 int ReportProgress_DIRECTBIND ;
 int ReportProgress_MIMETYPEAVAILABLE ;
 int ReportProgress_SENDINGREQUEST ;
 int ReportProgress_VERIFIEDMIMETYPEAVAILABLE ;
 int ReportResult ;
 int SET_EXPECT (int ) ;
 scalar_t__ S_OK ;
 scalar_t__ TRUE ;
 int bind_info ;
 int bindf ;
 scalar_t__ expect_hrResult ;
 int ok (int,char*,scalar_t__) ;
 int protocol_sink ;
 int win_skip (char*) ;

__attribute__((used)) static BOOL file_protocol_start(IInternetProtocol *protocol, LPCWSTR url,
        IInternetProtocolEx *protocolex, IUri *uri, BOOL is_first)
{
    HRESULT hres;

    SET_EXPECT(GetBindInfo);
    if(!(bindf & BINDF_FROMURLMON))
       SET_EXPECT(ReportProgress_DIRECTBIND);
    if(is_first) {
        SET_EXPECT(ReportProgress_SENDINGREQUEST);
        SET_EXPECT(ReportProgress_CACHEFILENAMEAVAILABLE);
        if(bindf & BINDF_FROMURLMON)
            SET_EXPECT(ReportProgress_VERIFIEDMIMETYPEAVAILABLE);
        else
            SET_EXPECT(ReportProgress_MIMETYPEAVAILABLE);
    }
    SET_EXPECT(ReportData);
    if(is_first)
        SET_EXPECT(ReportResult);

    expect_hrResult = S_OK;

    if(protocolex) {
        hres = IInternetProtocolEx_StartEx(protocolex, uri, &protocol_sink, &bind_info, 0, 0);
        ok(hres == S_OK, "StartEx failed: %08x\n", hres);
    }else {
        hres = IInternetProtocol_Start(protocol, url, &protocol_sink, &bind_info, 0, 0);
        if(hres == INET_E_RESOURCE_NOT_FOUND) {
            win_skip("Start failed\n");
            return FALSE;
        }
        ok(hres == S_OK, "Start failed: %08x\n", hres);
    }

    CHECK_CALLED(GetBindInfo);
    if(!(bindf & BINDF_FROMURLMON))
        CLEAR_CALLED(ReportProgress_DIRECTBIND);
    if(is_first) {
        CHECK_CALLED(ReportProgress_SENDINGREQUEST);
        CHECK_CALLED(ReportProgress_CACHEFILENAMEAVAILABLE);
        if(bindf & BINDF_FROMURLMON)
            CHECK_CALLED(ReportProgress_VERIFIEDMIMETYPEAVAILABLE);
        else
            CHECK_CALLED(ReportProgress_MIMETYPEAVAILABLE);
    }
    CHECK_CALLED(ReportData);
    if(is_first)
        CHECK_CALLED(ReportResult);

    return TRUE;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;
typedef int IInternetProtocol ;
typedef int HRESULT ;
typedef scalar_t__ BOOL ;


 int CHECK_CALLED (int ) ;
 scalar_t__ FAILED (int ) ;
 int GetBindInfo ;
 int IInternetProtocol_Start (int *,int ,int *,int *,int ,int ) ;
 scalar_t__ ITS_PROTOCOL ;
 scalar_t__ MK_PROTOCOL ;
 int ReportData ;
 int ReportProgress_BEGINDOWNLOADDATA ;
 int ReportProgress_CACHEFILENAMEAVAILABLE ;
 int ReportProgress_DIRECTBIND ;
 int ReportProgress_MIMETYPEAVAILABLE ;
 int ReportProgress_SENDINGREQUEST ;
 int ReportResult ;
 int SET_CALLED (int ) ;
 int SET_EXPECT (int ) ;
 int S_OK ;
 int bind_info ;
 int expect_hrResult ;
 int protocol_sink ;
 scalar_t__ test_protocol ;

__attribute__((used)) static HRESULT _protocol_start(unsigned line, IInternetProtocol *protocol, LPCWSTR url, BOOL expect_mime)
{
    HRESULT hres;

    SET_EXPECT(GetBindInfo);
    if(test_protocol == MK_PROTOCOL)
        SET_EXPECT(ReportProgress_DIRECTBIND);
    SET_EXPECT(ReportProgress_SENDINGREQUEST);
    if(expect_mime)
        SET_EXPECT(ReportProgress_MIMETYPEAVAILABLE);
    if(test_protocol == MK_PROTOCOL)
        SET_EXPECT(ReportProgress_CACHEFILENAMEAVAILABLE);
    SET_EXPECT(ReportData);
    if(test_protocol == ITS_PROTOCOL)
        SET_EXPECT(ReportProgress_BEGINDOWNLOADDATA);
    SET_EXPECT(ReportResult);
    expect_hrResult = S_OK;

    hres = IInternetProtocol_Start(protocol, url, &protocol_sink, &bind_info, 0, 0);

    if(FAILED(hres)) {
        SET_CALLED(GetBindInfo);
        if(test_protocol == MK_PROTOCOL)
            SET_CALLED(ReportProgress_DIRECTBIND);
        SET_CALLED(ReportProgress_SENDINGREQUEST);
        if(expect_mime)
            SET_CALLED(ReportProgress_MIMETYPEAVAILABLE);
        if(test_protocol == MK_PROTOCOL)
            SET_EXPECT(ReportProgress_CACHEFILENAMEAVAILABLE);
        SET_CALLED(ReportData);
        if(test_protocol == ITS_PROTOCOL)
            SET_CALLED(ReportProgress_BEGINDOWNLOADDATA);
        SET_CALLED(ReportResult);
    }else {
        CHECK_CALLED(GetBindInfo);
        if(test_protocol == MK_PROTOCOL)
            SET_CALLED(ReportProgress_DIRECTBIND);
        CHECK_CALLED(ReportProgress_SENDINGREQUEST);
        if(expect_mime)
            CHECK_CALLED(ReportProgress_MIMETYPEAVAILABLE);
        if(test_protocol == MK_PROTOCOL)
            SET_EXPECT(ReportProgress_CACHEFILENAMEAVAILABLE);
        CHECK_CALLED(ReportData);
        if(test_protocol == ITS_PROTOCOL)
            CHECK_CALLED(ReportProgress_BEGINDOWNLOADDATA);
        CHECK_CALLED(ReportResult);
    }

    return hres;
}

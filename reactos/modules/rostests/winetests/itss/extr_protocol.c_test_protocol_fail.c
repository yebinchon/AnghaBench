
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;
typedef int IInternetProtocol ;
typedef int HRESULT ;


 int CHECK_CALLED (int ) ;
 int GetBindInfo ;
 int IInternetProtocol_Start (int *,int ,int *,int *,int ,int ) ;
 int ReportResult ;
 int SET_EXPECT (int ) ;
 int bind_info ;
 int expect_hrResult ;
 int ok (int,char*,int ,int ) ;
 int protocol_sink ;

__attribute__((used)) static void test_protocol_fail(IInternetProtocol *protocol, LPCWSTR url, HRESULT expected_hres)
{
    HRESULT hres;

    SET_EXPECT(GetBindInfo);
    SET_EXPECT(ReportResult);

    expect_hrResult = expected_hres;
    hres = IInternetProtocol_Start(protocol, url, &protocol_sink, &bind_info, 0, 0);
    ok(hres == expected_hres, "expected: %08x got: %08x\n", expected_hres, hres);

    CHECK_CALLED(GetBindInfo);
    CHECK_CALLED(ReportResult);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IXMLHttpRequest ;
typedef int ISupportErrorInfo ;
typedef int IServerXMLHTTPRequest ;
typedef scalar_t__ HRESULT ;


 int EXPECT_REF (int *,int) ;
 int IID_ISupportErrorInfo ;
 scalar_t__ IServerXMLHTTPRequest_QueryInterface (int *,int *,void**) ;
 int IServerXMLHTTPRequest_Release (int *) ;
 int ISupportErrorInfo_Release (int *) ;
 scalar_t__ IXMLHttpRequest_QueryInterface (int *,int *,void**) ;
 int IXMLHttpRequest_Release (int *) ;
 scalar_t__ S_OK ;
 int * create_server_xhr () ;
 int * create_xhr () ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_supporterrorinfo(void)
{
    HRESULT hr;
    IXMLHttpRequest *xhr;
    IServerXMLHTTPRequest *server_xhr;
    ISupportErrorInfo *errorinfo, *errorinfo2;

    xhr = create_xhr();

    EXPECT_REF(xhr, 1);
    hr = IXMLHttpRequest_QueryInterface(xhr, &IID_ISupportErrorInfo, (void **)&errorinfo);
    ok(hr == S_OK, "Failed to get ISupportErrorInfo, hr %#x.\n", hr);
    EXPECT_REF(xhr, 2);

    hr = IXMLHttpRequest_QueryInterface(xhr, &IID_ISupportErrorInfo, (void **)&errorinfo2);
    ok(hr == S_OK, "Failed to get ISupportErrorInfo, hr %#x.\n", hr);
    ok(errorinfo == errorinfo2, "Unexpected error info instance.\n");
    EXPECT_REF(xhr, 3);

    ISupportErrorInfo_Release(errorinfo2);
    ISupportErrorInfo_Release(errorinfo);

    IXMLHttpRequest_Release(xhr);


    server_xhr = create_server_xhr();

    EXPECT_REF(server_xhr, 1);
    hr = IServerXMLHTTPRequest_QueryInterface(server_xhr, &IID_ISupportErrorInfo, (void **)&errorinfo);
    ok(hr == S_OK, "Failed to get ISupportErrorInfo, hr %#x.\n", hr);
    EXPECT_REF(server_xhr, 2);

    hr = IServerXMLHTTPRequest_QueryInterface(server_xhr, &IID_ISupportErrorInfo, (void **)&errorinfo2);
    ok(hr == S_OK, "Failed to get ISupportErrorInfo, hr %#x.\n", hr);
    ok(errorinfo == errorinfo2, "Unexpected error info instance.\n");
    EXPECT_REF(server_xhr, 3);

    ISupportErrorInfo_Release(errorinfo2);
    ISupportErrorInfo_Release(errorinfo);

    IServerXMLHTTPRequest_Release(server_xhr);
}

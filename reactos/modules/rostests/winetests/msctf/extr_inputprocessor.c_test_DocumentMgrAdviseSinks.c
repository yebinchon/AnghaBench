
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int ITfSource ;
typedef scalar_t__ HRESULT ;


 int IID_ITfSource ;
 int IID_ITfTransitoryExtensionSink ;
 scalar_t__ ITfDocumentMgr_QueryInterface (int ,int *,void**) ;
 scalar_t__ ITfSource_AdviseSink (int *,int *,int *,scalar_t__*) ;
 int ITfSource_Release (int *) ;
 scalar_t__ S_OK ;
 int TfTransitoryExtensionSink ;
 scalar_t__ dmSinkCookie ;
 int g_dm ;
 int ok (int,char*) ;

__attribute__((used)) static void test_DocumentMgrAdviseSinks(void)
{
    ITfSource *source;
    HRESULT hr;

    hr = ITfDocumentMgr_QueryInterface(g_dm, &IID_ITfSource, (void**)&source);
    ok(hr == S_OK,"Failed to get IID_ITfSource for DocumentMgr\n");

    dmSinkCookie = 0;
    hr = ITfSource_AdviseSink(source, &IID_ITfTransitoryExtensionSink, (IUnknown*)&TfTransitoryExtensionSink, &dmSinkCookie);
    ok(hr == S_OK,"Failed to Advise Sink\n");

    ITfSource_Release(source);
}

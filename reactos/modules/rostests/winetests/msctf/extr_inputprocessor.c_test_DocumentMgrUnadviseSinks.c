
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ITfSource ;
typedef scalar_t__ HRESULT ;


 int IID_ITfSource ;
 scalar_t__ ITfDocumentMgr_QueryInterface (int ,int *,void**) ;
 int ITfSource_Release (int *) ;
 scalar_t__ ITfSource_UnadviseSink (int *,int ) ;
 scalar_t__ S_OK ;
 int dmSinkCookie ;
 int g_dm ;
 int ok (int,char*) ;

__attribute__((used)) static void test_DocumentMgrUnadviseSinks(void)
{
    ITfSource *source = ((void*)0);
    HRESULT hr;

    hr = ITfDocumentMgr_QueryInterface(g_dm, &IID_ITfSource, (void**)&source);
    ok(hr == S_OK,"Failed to get IID_ITfSource for DocumentMgr\n");

    hr = ITfSource_UnadviseSink(source, dmSinkCookie);
    ok(hr == S_OK,"Failed to unadvise Sink\n");
    ITfSource_Release(source);
}

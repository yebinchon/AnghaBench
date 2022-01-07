
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IServerXMLHTTPRequest ;
typedef int HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_ServerXMLHTTP30 ;
 int CoCreateInstance (int *,int *,int ,int *,void**) ;
 int IID_IServerXMLHTTPRequest ;
 scalar_t__ SUCCEEDED (int ) ;

__attribute__((used)) static IServerXMLHTTPRequest *create_server_xhr(void)
{
    IServerXMLHTTPRequest *ret;
    HRESULT hr;

    hr = CoCreateInstance(&CLSID_ServerXMLHTTP30, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IServerXMLHTTPRequest, (void **)&ret);

    return SUCCEEDED(hr) ? ret : ((void*)0);
}

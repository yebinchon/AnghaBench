
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IXMLHttpRequest ;
typedef int HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_XMLHTTPRequest ;
 int CoCreateInstance (int *,int *,int ,int *,void**) ;
 int IID_IXMLHttpRequest ;
 scalar_t__ SUCCEEDED (int ) ;

__attribute__((used)) static IXMLHttpRequest *create_xhr(void)
{
    IXMLHttpRequest *ret;
    HRESULT hr;

    hr = CoCreateInstance(&CLSID_XMLHTTPRequest, ((void*)0), CLSCTX_INPROC_SERVER,
        &IID_IXMLHttpRequest, (void**)&ret);

    return SUCCEEDED(hr) ? ret : ((void*)0);
}

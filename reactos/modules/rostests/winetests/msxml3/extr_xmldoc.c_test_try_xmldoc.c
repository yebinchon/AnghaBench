
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPVOID ;
typedef int IXMLDocument ;
typedef int HRESULT ;
typedef int BOOL ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_XMLDocument ;
 int CoCreateInstance (int *,int *,int ,int *,int *) ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int IID_IXMLDocument ;
 int IXMLDocument_Release (int *) ;
 int TRUE ;
 int win_skip (char*) ;

__attribute__((used)) static BOOL test_try_xmldoc(void)
{
    IXMLDocument *doc = ((void*)0);
    HRESULT hr;

    hr = CoCreateInstance(&CLSID_XMLDocument, ((void*)0), CLSCTX_INPROC_SERVER,
                          &IID_IXMLDocument, (LPVOID*)&doc);
    if (FAILED(hr))
    {
        win_skip("Failed to create XMLDocument instance\n");
        return FALSE;
    }

    IXMLDocument_Release(doc);
    return TRUE;
}

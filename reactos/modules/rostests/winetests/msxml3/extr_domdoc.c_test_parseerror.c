
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IXMLDOMParseError2 ;
typedef int IXMLDOMParseError ;
typedef int IXMLDOMDocument ;
typedef int HRESULT ;


 int CLSID_DOMDocument60 ;
 int EXPECT_HR (int ,int ) ;
 int E_INVALIDARG ;
 int IID_IXMLDOMDocument ;
 int IID_IXMLDOMParseError2 ;
 int IXMLDOMDocument_Release (int *) ;
 int IXMLDOMDocument_get_parseError (int *,int **) ;
 int IXMLDOMParseError2_Release (int *) ;
 int IXMLDOMParseError_QueryInterface (int *,int *,void**) ;
 int IXMLDOMParseError_Release (int *) ;
 int IXMLDOMParseError_get_line (int *,int *) ;
 int IXMLDOMParseError_get_linepos (int *,int *) ;
 int IXMLDOMParseError_get_srcText (int *,int *) ;
 int S_OK ;
 int * create_document (int *) ;
 int * create_document_version (int,int *) ;
 int is_clsid_supported (int *,int *) ;

__attribute__((used)) static void test_parseerror(void)
{
    IXMLDOMParseError2 *error2;
    IXMLDOMParseError *error;
    IXMLDOMDocument *doc;
    HRESULT hr;

    doc = create_document(&IID_IXMLDOMDocument);

    hr = IXMLDOMDocument_get_parseError(doc, &error);
    EXPECT_HR(hr, S_OK);

    hr = IXMLDOMParseError_get_line(error, ((void*)0));
    EXPECT_HR(hr, E_INVALIDARG);

    hr = IXMLDOMParseError_get_srcText(error, ((void*)0));
    EXPECT_HR(hr, E_INVALIDARG);

    hr = IXMLDOMParseError_get_linepos(error, ((void*)0));
    EXPECT_HR(hr, E_INVALIDARG);

    IXMLDOMParseError_Release(error);
    IXMLDOMDocument_Release(doc);

    if (!is_clsid_supported(&CLSID_DOMDocument60, &IID_IXMLDOMDocument)) return;
    doc = create_document_version(60, &IID_IXMLDOMDocument);

    hr = IXMLDOMDocument_get_parseError(doc, &error);
    EXPECT_HR(hr, S_OK);
    hr = IXMLDOMParseError_QueryInterface(error, &IID_IXMLDOMParseError2, (void**)&error2);
    EXPECT_HR(hr, S_OK);
    IXMLDOMParseError2_Release(error2);
    IXMLDOMParseError_Release(error);
    IXMLDOMDocument_Release(doc);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IXMLParser ;
typedef int IXMLNodeFactory ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ DWORD ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_XMLParser30 ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 scalar_t__ E_INVALIDARG ;
 scalar_t__ FAILED (scalar_t__) ;
 int IID_IXMLParser ;
 scalar_t__ IXMLParser_GetFactory (int *,int **) ;
 scalar_t__ IXMLParser_GetFlags (int *) ;
 scalar_t__ IXMLParser_GetParserState (int *) ;
 int IXMLParser_Release (int *) ;
 scalar_t__ IXMLParser_SetFactory (int *,int *) ;
 scalar_t__ IXMLParser_SetFlags (int *,scalar_t__) ;
 scalar_t__ IXMLParser_SetInput (int *,int *) ;
 scalar_t__ S_OK ;
 scalar_t__ XMLFLAG_SAX ;
 scalar_t__ XMLPARSER_IDLE ;
 int ok (int,char*,...) ;
 int thenodefactory ;
 int win_skip (char*,scalar_t__) ;

__attribute__((used)) static void create_test(void)
{
    HRESULT hr;
    IXMLParser *parser;
    IXMLNodeFactory *nodefactory;
    DWORD flags;

    hr = CoCreateInstance(&CLSID_XMLParser30, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IXMLParser, (void**)&parser);
    if (FAILED(hr))
    {
        win_skip("IXMLParser is not available (0x%08x)\n", hr);
        return;
    }

    flags = IXMLParser_GetFlags(parser);
    ok(flags == 0, "Expected 0 got %d\n", flags);

    hr = IXMLParser_SetFlags(parser, XMLFLAG_SAX);
    ok(hr == S_OK, "Expected S_OK got 0x%08x\n", hr);

    flags = IXMLParser_GetFlags(parser);
    ok(flags == XMLFLAG_SAX, "Expected 0 got %d\n", flags);

    hr = IXMLParser_GetFactory(parser, ((void*)0));
    ok(hr == E_INVALIDARG, "Expected S_OK got 0x%08x\n", hr);

    hr = IXMLParser_GetFactory(parser, &nodefactory);
    ok(hr == S_OK, "Expected S_OK got 0x%08x\n", hr);
    ok(nodefactory == ((void*)0), "expected NULL\n");

    hr = IXMLParser_SetFactory(parser, &thenodefactory);
    ok(hr == S_OK, "Expected S_OK got 0x%08x\n", hr);

    hr = IXMLParser_GetFactory(parser, &nodefactory);
    ok(hr == S_OK, "Expected S_OK got 0x%08x\n", hr);
    ok(nodefactory == &thenodefactory, "expected NULL\n");

    hr = IXMLParser_SetInput(parser, ((void*)0));
    ok(hr == E_INVALIDARG, "Expected S_OK got 0x%08x\n", hr);

    hr = IXMLParser_SetFactory(parser, ((void*)0));
    ok(hr == S_OK, "Expected S_OK got 0x%08x\n", hr);

    hr = IXMLParser_SetFlags(parser, 0);
    ok(hr == S_OK, "Expected S_OK got 0x%08x\n", hr);

    hr = IXMLParser_GetParserState(parser);
    ok(hr == XMLPARSER_IDLE, "got 0x%08x\n", hr);

    IXMLParser_Release(parser);
}

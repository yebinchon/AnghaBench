
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANT_BOOL ;
typedef int IXMLDOMNode ;
typedef int IXMLDOMDocument ;
typedef scalar_t__ HRESULT ;
typedef int BSTR ;


 int IID_IXMLDOMDocument ;
 int IID_IXMLDOMNode ;
 scalar_t__ IXMLDOMDocument_QueryInterface (int *,int *,void**) ;
 int IXMLDOMDocument_Release (int *) ;
 scalar_t__ IXMLDOMDocument_loadXML (int *,int ,int *) ;
 scalar_t__ IXMLDOMDocument_transformNode (int *,int *,int *) ;
 int IXMLDOMNode_Release (int *) ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 int _bstr_ (int ) ;
 int compareIgnoreReturns (int ,int ) ;
 int * create_document (int *) ;
 int free_bstrs () ;
 int ok (int,char*,scalar_t__) ;
 int szTransformOutput ;
 int szTransformSSXML ;
 int szTransformXML ;
 scalar_t__ wine_dbgstr_w (int ) ;

__attribute__((used)) static void test_testTransforms(void)
{
    IXMLDOMDocument *doc, *docSS;
    IXMLDOMNode *pNode;
    VARIANT_BOOL bSucc;
    HRESULT hr;

    doc = create_document(&IID_IXMLDOMDocument);
    docSS = create_document(&IID_IXMLDOMDocument);

    hr = IXMLDOMDocument_loadXML(doc, _bstr_(szTransformXML), &bSucc);
    ok(hr == S_OK, "ret %08x\n", hr );

    hr = IXMLDOMDocument_loadXML(docSS, _bstr_(szTransformSSXML), &bSucc);
    ok(hr == S_OK, "ret %08x\n", hr );

    hr = IXMLDOMDocument_QueryInterface(docSS, &IID_IXMLDOMNode, (void**)&pNode );
    ok(hr == S_OK, "ret %08x\n", hr );
    if(hr == S_OK)
    {
        BSTR bOut;

        hr = IXMLDOMDocument_transformNode(doc, pNode, &bOut);
        ok(hr == S_OK, "ret %08x\n", hr );
        if(hr == S_OK)
        {
            ok( compareIgnoreReturns( bOut, _bstr_(szTransformOutput)), "got output %s\n", wine_dbgstr_w(bOut));
            SysFreeString(bOut);
        }

        IXMLDOMNode_Release(pNode);
    }

    IXMLDOMDocument_Release(docSS);
    IXMLDOMDocument_Release(doc);

    free_bstrs();
}

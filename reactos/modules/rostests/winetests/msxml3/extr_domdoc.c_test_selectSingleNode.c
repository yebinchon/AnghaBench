
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ VARIANT_BOOL ;
typedef void* LONG ;
typedef void IXMLDOMNodeList ;
typedef void IXMLDOMNode ;
typedef int IXMLDOMDocument ;
typedef void* HRESULT ;


 void* E_INVALIDARG ;
 int IID_IXMLDOMDocument ;
 int IXMLDOMDocument_Release (int *) ;
 void* IXMLDOMDocument_loadXML (int *,int *,scalar_t__*) ;
 void* IXMLDOMDocument_selectNodes (int *,int *,void**) ;
 void* IXMLDOMDocument_selectSingleNode (int *,int *,void**) ;
 int IXMLDOMNodeList_Release (void*) ;
 void* IXMLDOMNodeList_get_length (void*,void**) ;
 int IXMLDOMNode_Release (void*) ;
 void* S_FALSE ;
 void* S_OK ;
 scalar_t__ VARIANT_TRUE ;
 int * _bstr_ (char*) ;
 char* complete4A ;
 int * create_document (int *) ;
 int free_bstrs () ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_selectSingleNode(void)
{
    IXMLDOMDocument *doc;
    IXMLDOMNodeList *list;
    IXMLDOMNode *node;
    VARIANT_BOOL b;
    HRESULT hr;
    LONG len;

    doc = create_document(&IID_IXMLDOMDocument);

    hr = IXMLDOMDocument_selectSingleNode(doc, ((void*)0), ((void*)0));
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = IXMLDOMDocument_selectNodes(doc, ((void*)0), ((void*)0));
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = IXMLDOMDocument_loadXML( doc, _bstr_(complete4A), &b );
    ok( hr == S_OK, "loadXML failed\n");
    ok( b == VARIANT_TRUE, "failed to load XML string\n");

    hr = IXMLDOMDocument_selectSingleNode(doc, ((void*)0), ((void*)0));
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = IXMLDOMDocument_selectNodes(doc, ((void*)0), ((void*)0));
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = IXMLDOMDocument_selectSingleNode(doc, _bstr_("lc"), ((void*)0));
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = IXMLDOMDocument_selectNodes(doc, _bstr_("lc"), ((void*)0));
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = IXMLDOMDocument_selectSingleNode(doc, _bstr_("lc"), &node);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    IXMLDOMNode_Release(node);

    hr = IXMLDOMDocument_selectNodes(doc, _bstr_("lc"), &list);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    IXMLDOMNodeList_Release(list);

    list = (void*)0xdeadbeef;
    hr = IXMLDOMDocument_selectNodes(doc, ((void*)0), &list);
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);
    ok(list == (void*)0xdeadbeef, "got %p\n", list);

    node = (void*)0xdeadbeef;
    hr = IXMLDOMDocument_selectSingleNode(doc, _bstr_("nonexistent"), &node);
    ok(hr == S_FALSE, "got 0x%08x\n", hr);
    ok(node == 0, "got %p\n", node);

    list = (void*)0xdeadbeef;
    hr = IXMLDOMDocument_selectNodes(doc, _bstr_("nonexistent"), &list);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    len = 1;
    hr = IXMLDOMNodeList_get_length(list, &len);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(len == 0, "got %d\n", len);
    IXMLDOMNodeList_Release(list);

    IXMLDOMDocument_Release(doc);
    free_bstrs();
}

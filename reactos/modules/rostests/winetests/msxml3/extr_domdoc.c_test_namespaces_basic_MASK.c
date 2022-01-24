#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ VARIANT_BOOL ;
typedef  int /*<<< orphan*/  IXMLDOMNode ;
typedef  int /*<<< orphan*/  IXMLDOMElement ;
typedef  int /*<<< orphan*/  IXMLDOMDocument ;
typedef  int /*<<< orphan*/  IXMLDOMAttribute ;
typedef  scalar_t__ HRESULT ;
typedef  char CHAR ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  IID_IXMLDOMDocument ; 
 int /*<<< orphan*/  IID_IXMLDOMElement ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ VARIANT_TRUE ; 
 int /*<<< orphan*/  FUNC17 (char const*) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC23(void)
{
    static const CHAR namespaces_xmlA[] =
        "<?xml version=\"1.0\"?>\n"
        "<XMI xmi.version=\"1.1\" xmlns:Model=\"http://omg.org/mof.Model/1.3\">"
        "  <XMI.content>"
        "    <Model:Package name=\"WinePackage\" Model:name2=\"name2 attr\" />"
        "  </XMI.content>"
        "</XMI>";

    IXMLDOMDocument *doc;
    IXMLDOMElement *elem;
    IXMLDOMNode *node;

    VARIANT_BOOL b;
    HRESULT hr;
    BSTR str;

    doc = FUNC18(&IID_IXMLDOMDocument);

    hr = FUNC6(doc, FUNC17(namespaces_xmlA), &b);
    FUNC0(hr, S_OK);
    FUNC21(b == VARIANT_TRUE, "got %d\n", b);

    str = (void *)0xdeadbeef;
    hr = FUNC5(doc, &str);
    FUNC0(hr, S_FALSE);
    FUNC21(str == NULL, "got %p\n", str);

    hr = FUNC7(doc, FUNC17("//XMI.content"), &node );
    FUNC0(hr, S_OK);
    if(hr == S_OK)
    {
        IXMLDOMAttribute *attr;
        IXMLDOMNode *node2;

        hr = FUNC12(node, &node2);
        FUNC0(hr, S_OK);
        FUNC21(node2 != NULL, "got %p\n", node2);

        /* Test get_prefix */
        hr = FUNC15(node2, NULL);
        FUNC0(hr, E_INVALIDARG);
        /* NOTE: Need to test that arg2 gets cleared on Error. */

        hr = FUNC15(node2, &str);
        FUNC0(hr, S_OK);
        FUNC21( !FUNC20( str, FUNC17("Model")), "got %s\n", FUNC22(str));
        FUNC16(str);

        hr = FUNC14(node2, &str);
        FUNC0(hr, S_OK);
        FUNC21(!FUNC20( str, FUNC17("Model:Package")), "got %s\n", FUNC22(str));
        FUNC16(str);

        /* Test get_namespaceURI */
        hr = FUNC13(node2, NULL);
        FUNC0(hr, E_INVALIDARG);
        /* NOTE: Need to test that arg2 gets cleared on Error. */

        hr = FUNC13(node2, &str);
        FUNC0(hr, S_OK);
        FUNC21(!FUNC20( str, FUNC17("http://omg.org/mof.Model/1.3")), "got %s\n", FUNC22(str));
        FUNC16(str);

        hr = FUNC10(node2, &IID_IXMLDOMElement, (void**)&elem);
        FUNC0(hr, S_OK);

        hr = FUNC9(elem, FUNC17("Model:name2"), &attr);
        FUNC0(hr, S_OK);

        hr = FUNC2(attr, &str);
        FUNC0(hr, S_OK);
        FUNC21(!FUNC20( str, FUNC17("Model:name2")), "got %s\n", FUNC22(str));
        FUNC16(str);

        hr = FUNC3(attr, &str);
        FUNC0(hr, S_OK);
        FUNC21(!FUNC20( str, FUNC17("Model")), "got %s\n", FUNC22(str));
        FUNC16(str);

        FUNC1(attr);
        FUNC8(elem);

        FUNC11(node2);
        FUNC11(node);
    }

    FUNC4(doc);

    FUNC19();
}
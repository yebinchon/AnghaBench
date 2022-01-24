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
typedef  int /*<<< orphan*/  VARIANT_BOOL ;
typedef  int /*<<< orphan*/  IXMLDOMElement ;
typedef  int /*<<< orphan*/  IXMLDOMDocumentFragment ;
typedef  int /*<<< orphan*/  IXMLDOMDocument ;
typedef  int /*<<< orphan*/  IXMLDOMComment ;
typedef  int /*<<< orphan*/  IXMLDOMCDATASection ;
typedef  int /*<<< orphan*/ * HRESULT ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * E_INVALIDARG ; 
 int /*<<< orphan*/  IID_IXMLDOMDocument ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * S_FALSE ; 
 int /*<<< orphan*/ * S_OK ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 char* get_prefix_doc ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int,char*,...) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC25(void)
{
    IXMLDOMDocumentFragment *fragment;
    IXMLDOMCDATASection *cdata;
    IXMLDOMElement *element;
    IXMLDOMComment *comment;
    IXMLDOMDocument *doc;
    VARIANT_BOOL b;
    HRESULT hr;
    BSTR str;

    doc = FUNC20(&IID_IXMLDOMDocument);

    /* nodes that can't support prefix */
    /* 1. document */
    str = (void*)0xdeadbeef;
    hr = FUNC13(doc, &str);
    FUNC0(hr, S_FALSE);
    FUNC23(str == NULL, "got %p\n", str);

    hr = FUNC13(doc, NULL);
    FUNC0(hr, E_INVALIDARG);

    /* 2. cdata */
    hr = FUNC8(doc, NULL, &cdata);
    FUNC23(hr == S_OK, "got %08x\n", hr );

    str = (void*)0xdeadbeef;
    hr = FUNC2(cdata, &str);
    FUNC23(hr == S_FALSE, "got %08x\n", hr);
    FUNC23( str == 0, "got %p\n", str);

    hr = FUNC2(cdata, NULL);
    FUNC23(hr == E_INVALIDARG, "got %08x\n", hr);
    FUNC1(cdata);

    /* 3. comment */
    hr = FUNC9(doc, NULL, &comment);
    FUNC23(hr == S_OK, "got %08x\n", hr );

    str = (void*)0xdeadbeef;
    hr = FUNC4(comment, &str);
    FUNC23(hr == S_FALSE, "got %08x\n", hr);
    FUNC23( str == 0, "got %p\n", str);

    hr = FUNC4(comment, NULL);
    FUNC23(hr == E_INVALIDARG, "got %08x\n", hr);
    FUNC3(comment);

    /* 4. fragment */
    hr = FUNC10(doc, &fragment);
    FUNC23(hr == S_OK, "got %08x\n", hr );

    str = (void*)0xdeadbeef;
    hr = FUNC6(fragment, &str);
    FUNC23(hr == S_FALSE, "got %08x\n", hr);
    FUNC23( str == 0, "got %p\n", str);

    hr = FUNC6(fragment, NULL);
    FUNC23(hr == E_INVALIDARG, "got %08x\n", hr);
    FUNC5(fragment);

    /* no prefix */
    hr = FUNC11(doc, FUNC19("elem"), &element);
    FUNC23( hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC17(element, NULL);
    FUNC23( hr == E_INVALIDARG, "got 0x%08x\n", hr);

    str = (void*)0xdeadbeef;
    hr = FUNC17(element, &str);
    FUNC23( hr == S_FALSE, "got 0x%08x\n", hr);
    FUNC23( str == 0, "got %p\n", str);

    FUNC15(element);

    /* with prefix */
    hr = FUNC11(doc, FUNC19("a:elem"), &element);
    FUNC23( hr == S_OK, "got 0x%08x\n", hr);

    str = (void*)0xdeadbeef;
    hr = FUNC17(element, &str);
    FUNC23( hr == S_OK, "got 0x%08x\n", hr);
    FUNC23( FUNC22(str, FUNC19("a")) == 0, "expected prefix \"a\"\n");
    FUNC18(str);

    str = (void*)0xdeadbeef;
    hr = FUNC16(element, &str);
    FUNC23( hr == S_FALSE, "got 0x%08x\n", hr);
    FUNC23( str == 0, "got %p\n", str);

    FUNC15(element);

    hr = FUNC14(doc, FUNC19(get_prefix_doc), &b);
    FUNC0(hr, S_OK);

    hr = FUNC12(doc, &element);
    FUNC0(hr, S_OK);

    str = (void*)0xdeadbeef;
    hr = FUNC17(element, &str);
    FUNC0(hr, S_FALSE);
    FUNC23(str == NULL, "got %p\n", str);

    str = (void*)0xdeadbeef;
    hr = FUNC16(element, &str);
    FUNC0(hr, S_FALSE);
    FUNC23(str == NULL, "got %s\n", FUNC24(str));

    FUNC7(doc);
    FUNC21();
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ XmlNodeType ;
struct TYPE_3__ {scalar_t__ count; } ;
typedef  int LONG_PTR ;
typedef  int /*<<< orphan*/  IXmlResolver ;
typedef  int /*<<< orphan*/  IXmlReader ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int HRESULT ;
typedef  int DtdProcessing ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *) ; 
 int DtdProcessing_Prohibit ; 
 int E_INVALIDARG ; 
 int E_NOINTERFACE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IID_IStream ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  IID_IXmlReader ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int S_FALSE ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ XmlNodeType_Element ; 
 scalar_t__ XmlNodeType_None ; 
 int /*<<< orphan*/  XmlReadState_Closed ; 
 int /*<<< orphan*/  XmlReadState_Initial ; 
 int /*<<< orphan*/  XmlReaderProperty_DtdProcessing ; 
 int /*<<< orphan*/  XmlReaderProperty_XmlResolver ; 
 TYPE_1__ input_iids ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  setinput_full ; 
 int /*<<< orphan*/  setinput_full_old ; 
 int FUNC13 (void**) ; 
 int /*<<< orphan*/  testresolver ; 

__attribute__((used)) static void FUNC14(void)
{
    IXmlResolver *resolver;
    IUnknown *input, *unk;
    IXmlReader *reader;
    DtdProcessing dtd;
    XmlNodeType nodetype;
    HRESULT hr;

    /* crashes native */
    if (0)
    {
        FUNC0(&IID_IXmlReader, NULL, NULL);
        FUNC0(NULL, (void**)&reader, NULL);
    }

    hr = FUNC0(&IID_IStream, (void **)&unk, NULL);
    FUNC11(hr == E_NOINTERFACE, "got %08x\n", hr);

    hr = FUNC0(&IID_IUnknown, (void **)&unk, NULL);
    FUNC11(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    hr = FUNC1(unk, &IID_IXmlReader, (void **)&reader);
    FUNC11(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    FUNC11(unk == (IUnknown *)reader, "unexpected interface\n");
    FUNC5(reader);
    FUNC2(unk);

    hr = FUNC0(&IID_IUnknown, (void **)&reader, NULL);
    FUNC11(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    FUNC5(reader);

    hr = FUNC0(&IID_IXmlReader, (void**)&reader, NULL);
    FUNC11(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    FUNC9(reader, XmlReadState_Closed);

    nodetype = XmlNodeType_Element;
    hr = FUNC3(reader, &nodetype);
    FUNC11(hr == S_FALSE, "got %08x\n", hr);
    FUNC11(nodetype == XmlNodeType_None, "got %d\n", nodetype);

    /* crashes on XP, 2k3, works on newer versions */
    if (0)
    {
        hr = FUNC3(reader, NULL);
        FUNC11(hr == E_INVALIDARG, "got %08x\n", hr);
    }

    resolver = (void*)0xdeadbeef;
    hr = FUNC4(reader, XmlReaderProperty_XmlResolver, (LONG_PTR*)&resolver);
    FUNC11(hr == S_OK, "got 0x%08x\n", hr);
    FUNC11(resolver == NULL, "got %p\n", resolver);

    hr = FUNC7(reader, XmlReaderProperty_XmlResolver, 0);
    FUNC11(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC7(reader, XmlReaderProperty_XmlResolver, (LONG_PTR)&testresolver);
    FUNC11(hr == S_OK, "got 0x%08x\n", hr);

    resolver = NULL;
    hr = FUNC4(reader, XmlReaderProperty_XmlResolver, (LONG_PTR*)&resolver);
    FUNC11(hr == S_OK, "got 0x%08x\n", hr);
    FUNC11(resolver == &testresolver, "got %p\n", resolver);
    FUNC8(resolver);

    hr = FUNC7(reader, XmlReaderProperty_XmlResolver, 0);
    FUNC11(hr == S_OK, "got 0x%08x\n", hr);

    dtd = 2;
    hr = FUNC4(reader, XmlReaderProperty_DtdProcessing, (LONG_PTR*)&dtd);
    FUNC11(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    FUNC11(dtd == DtdProcessing_Prohibit, "got %d\n", dtd);

    dtd = 2;
    hr = FUNC7(reader, XmlReaderProperty_DtdProcessing, dtd);
    FUNC11(hr == E_INVALIDARG, "Expected E_INVALIDARG, got %08x\n", hr);

    hr = FUNC7(reader, XmlReaderProperty_DtdProcessing, -1);
    FUNC11(hr == E_INVALIDARG, "Expected E_INVALIDARG, got %08x\n", hr);

    /* Null input pointer, releases previous input */
    hr = FUNC6(reader, NULL);
    FUNC11(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    FUNC10(reader, XmlReadState_Initial, XmlReadState_Closed);

    /* test input interface selection sequence */
    hr = FUNC13((void**)&input);
    FUNC11(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    if (hr == S_OK)
    {
        input_iids.count = 0;
        hr = FUNC6(reader, input);
        FUNC11(hr == E_NOINTERFACE, "Expected E_NOINTERFACE, got %08x\n", hr);
        FUNC12(&input_iids, setinput_full, setinput_full_old, FALSE);
        FUNC2(input);
    }
    FUNC5(reader);
}
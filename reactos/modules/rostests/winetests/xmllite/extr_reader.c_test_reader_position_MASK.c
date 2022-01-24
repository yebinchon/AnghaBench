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
typedef  int XmlNodeType ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  IXmlReader ;
typedef  int HRESULT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *) ; 
 int E_INVALIDARG ; 
 int /*<<< orphan*/  IID_IXmlReader ; 
 int FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int S_FALSE ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int XmlNodeType_Element ; 
 int XmlNodeType_EndElement ; 
 int XmlNodeType_Whitespace ; 
 int /*<<< orphan*/  XmlReadState_Closed ; 
 int /*<<< orphan*/  XmlReadState_Initial ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static void FUNC14(void)
{
    static const char *xml = "<c:a xmlns:c=\"nsdef c\" b=\"attr b\">\n</c:a>";
    IXmlReader *reader;
    XmlNodeType type;
    UINT position;
    HRESULT hr;

    hr = FUNC0(&IID_IXmlReader, (void **)&reader, NULL);
    FUNC12(hr == S_OK, "S_OK, got %08x\n", hr);

    FUNC8(reader, XmlReadState_Closed);

    /* position methods with Null args */
    hr = FUNC1(reader, NULL);
    FUNC12(hr == E_INVALIDARG, "Expected E_INVALIDARG, got %08x\n", hr);

    hr = FUNC2(reader, NULL);
    FUNC12(hr == E_INVALIDARG, "Expected E_INVALIDARG, got %08x\n", hr);

    position = 123;
    hr = FUNC2(reader, &position);
    FUNC12(hr == S_FALSE, "got %#x\n", hr);
    FUNC12(position == 0, "got %u\n", position);

    position = 123;
    hr = FUNC1(reader, &position);
    FUNC12(hr == S_FALSE, "got %#x\n", hr);
    FUNC12(position == 0, "got %u\n", position);

    FUNC13(reader, xml);

    FUNC8(reader, XmlReadState_Initial);
    FUNC6(reader, 0, 0);
    hr = FUNC3(reader, &type);
    FUNC12(hr == S_OK, "got %08x\n", hr);
    FUNC12(type == XmlNodeType_Element, "got type %d\n", type);
    FUNC7(reader, 1, 2, ~0u, 34);

    FUNC11(reader);
    FUNC7(reader, 1, 6, ~0u, 34);

    FUNC11(reader);
    FUNC7(reader, 1, 24, ~0u, 34);

    FUNC10(reader);
    FUNC7(reader, 1, 2, ~0u, 34);

    hr = FUNC3(reader, &type);
    FUNC12(hr == S_OK, "got %08x\n", hr);
    FUNC12(type == XmlNodeType_Whitespace, "got type %d\n", type);
    FUNC7(reader, 1, 35, 2, 6);

    hr = FUNC3(reader, &type);
    FUNC12(hr == S_OK, "got %08x\n", hr);
    FUNC12(type == XmlNodeType_EndElement, "got type %d\n", type);
    FUNC7(reader, 2, 3, 2, 6);

    hr = FUNC5(reader, NULL);
    FUNC12(hr == S_OK, "got %08x\n", hr);
    FUNC9(reader, XmlReadState_Initial, XmlReadState_Closed);
    FUNC6(reader, 0, 0);

    FUNC4(reader);
}
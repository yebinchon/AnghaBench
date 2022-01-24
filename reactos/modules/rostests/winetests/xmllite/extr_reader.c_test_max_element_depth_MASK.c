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
typedef  unsigned int XmlNodeType ;
typedef  int /*<<< orphan*/  IXmlReader ;
typedef  unsigned int HRESULT ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IXmlReader ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 unsigned int SC_E_MAXELEMENTDEPTH ; 
 unsigned int S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int XmlNodeType_None ; 
 int /*<<< orphan*/  XmlReadState_EndOfFile ; 
 int /*<<< orphan*/  XmlReadState_Error ; 
 int /*<<< orphan*/  XmlReadState_Interactive ; 
 int /*<<< orphan*/  XmlReaderProperty_MaxElementDepth ; 
 int /*<<< orphan*/  FUNC8 (int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static void FUNC10(void)
{
    static const char *xml =
        "<a>"
            "<b attrb=\"_b\">"
                "<c>"
                   "<d></d>"
                "</c>"
            "</b>"
        "</a>";
    XmlNodeType nodetype;
    unsigned int count;
    IXmlReader *reader;
    HRESULT hr;

    hr = FUNC0(&IID_IXmlReader, (void **)&reader, NULL);
    FUNC8(hr == S_OK, "S_OK, got %08x\n", hr);

    FUNC9(reader, xml);

    hr = FUNC4(reader, XmlReaderProperty_MaxElementDepth, 2);
    FUNC8(hr == S_OK, "got %08x\n", hr);

    FUNC5(reader, 0);

    hr = FUNC2(reader, NULL);
    FUNC8(hr == S_OK, "got %08x\n", hr);

    FUNC5(reader, 0);

    hr = FUNC2(reader, NULL);
    FUNC8(hr == S_OK, "got %08x\n", hr);

    FUNC5(reader, 1);
    FUNC7(reader, XmlReadState_Interactive);

    hr = FUNC2(reader, NULL);
    FUNC8(hr == SC_E_MAXELEMENTDEPTH, "got %08x\n", hr);

    FUNC6(reader, 0, 2);
    FUNC7(reader, XmlReadState_Error);

    hr = FUNC4(reader, XmlReaderProperty_MaxElementDepth, 10);
    FUNC8(hr == S_OK, "got %08x\n", hr);

    hr = FUNC2(reader, NULL);
    FUNC8(hr == SC_E_MAXELEMENTDEPTH, "got %08x\n", hr);

    FUNC6(reader, 0, 2);
    FUNC7(reader, XmlReadState_Error);

    /* test if stepping into attributes enforces depth limit too */
    FUNC9(reader, xml);

    hr = FUNC4(reader, XmlReaderProperty_MaxElementDepth, 2);
    FUNC8(hr == S_OK, "got %08x\n", hr);

    FUNC5(reader, 0);

    hr = FUNC2(reader, NULL);
    FUNC8(hr == S_OK, "got %08x\n", hr);

    FUNC5(reader, 0);

    hr = FUNC2(reader, NULL);
    FUNC8(hr == S_OK, "got %08x\n", hr);

    FUNC5(reader, 1);

    hr = FUNC1(reader);
    FUNC8(hr == S_OK, "got %08x\n", hr);

    FUNC5(reader, 2);
    FUNC7(reader, XmlReadState_Interactive);

    nodetype = 123;
    hr = FUNC2(reader, &nodetype);
    FUNC8(hr == SC_E_MAXELEMENTDEPTH, "got %08x\n", hr);
    FUNC8(nodetype == XmlNodeType_None, "got node type %d\n", nodetype);

    nodetype = 123;
    hr = FUNC2(reader, &nodetype);
    FUNC8(hr == SC_E_MAXELEMENTDEPTH, "got %08x\n", hr);
    FUNC8(nodetype == XmlNodeType_None, "got node type %d\n", nodetype);

    FUNC6(reader, 0, 2);
    FUNC7(reader, XmlReadState_Error);

    /* set max depth to 0, this disables depth limit */
    FUNC9(reader, xml);

    hr = FUNC4(reader, XmlReaderProperty_MaxElementDepth, 0);
    FUNC8(hr == S_OK, "got %08x\n", hr);

    count = 0;
    while (FUNC2(reader, NULL) == S_OK)
        count++;
    FUNC8(count == 8, "Unexpected node number %u\n", count);
    FUNC7(reader, XmlReadState_EndOfFile);

    FUNC3(reader);
}
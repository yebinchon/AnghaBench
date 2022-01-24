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
typedef  scalar_t__ XmlNodeType ;
typedef  int WCHAR ;
typedef  int /*<<< orphan*/  IXmlReader ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IXmlReader ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int const**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 scalar_t__ XmlNodeType_Element ; 
 scalar_t__ XmlNodeType_EndElement ; 
 scalar_t__ XmlNodeType_None ; 
 scalar_t__ XmlNodeType_Text ; 
 int /*<<< orphan*/  FUNC4 (int const*,int const*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC7 (int const*) ; 

__attribute__((used)) static void FUNC8(void)
{
    static const char testA[] = "<a b=\"c\">&#x1f3;&#x103;&gt;</a>";
    static const WCHAR chardataW[] = {0x01f3,0x0103,'>',0};
    const WCHAR *value;
    IXmlReader *reader;
    XmlNodeType type;
    HRESULT hr;

    hr = FUNC0(&IID_IXmlReader, (void **)&reader, NULL);
    FUNC5(hr == S_OK, "S_OK, got %08x\n", hr);

    FUNC6(reader, testA);

    hr = FUNC2(reader, &type);
    FUNC5(hr == S_OK, "got %08x\n", hr);
    FUNC5(type == XmlNodeType_Element, "Unexpected node type %d\n", type);

    hr = FUNC2(reader, &type);
    FUNC5(hr == S_OK, "got %08x\n", hr);
    FUNC5(type == XmlNodeType_Text, "Unexpected node type %d\n", type);

    hr = FUNC1(reader, &value, NULL);
    FUNC5(hr == S_OK, "got %08x\n", hr);
    FUNC5(!FUNC4(value, chardataW), "Text value : %s\n", FUNC7(value));

    hr = FUNC2(reader, &type);
    FUNC5(hr == S_OK, "got %08x\n", hr);
    FUNC5(type == XmlNodeType_EndElement, "Unexpected node type %d\n", type);

    hr = FUNC2(reader, &type);
    FUNC5(hr == S_FALSE, "got %08x\n", hr);
    FUNC5(type == XmlNodeType_None, "Unexpected node type %d\n", type);

    FUNC3(reader);
}
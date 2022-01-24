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
typedef  int /*<<< orphan*/  IXmlReader ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IID_IXmlReader ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ WC_E_SYNTAX ; 
 scalar_t__ XmlNodeType_Element ; 
 scalar_t__ XmlNodeType_None ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void)
{
    IXmlReader *reader;
    XmlNodeType type;
    HRESULT hr;

    hr = FUNC0(&IID_IXmlReader, (void **)&reader, NULL);
    FUNC4(hr == S_OK, "S_OK, got %08x\n", hr);

    FUNC6(reader, FALSE);

    FUNC5(reader, "<a/>");

    FUNC6(reader, FALSE);

    type = XmlNodeType_None;
    hr = FUNC1(reader, &type);
    FUNC4(hr == S_OK, "got %#x\n", hr);
    FUNC4(type == XmlNodeType_Element, "Unexpected type %d\n", type);

    FUNC6(reader, FALSE);

    type = XmlNodeType_Element;
    hr = FUNC1(reader, &type);
    FUNC4(hr == S_FALSE, "got %#x\n", hr);
    FUNC4(type == XmlNodeType_None, "Unexpected type %d\n", type);

    FUNC6(reader, TRUE);

    hr = FUNC3(reader, NULL);
    FUNC4(hr == S_OK, "got %08x\n", hr);

    FUNC6(reader, FALSE);

    FUNC2(reader);

    hr = FUNC0(&IID_IXmlReader, (void **)&reader, NULL);
    FUNC4(hr == S_OK, "S_OK, got %08x\n", hr);

    FUNC5(reader, "<a/>text");

    type = XmlNodeType_None;
    hr = FUNC1(reader, &type);
    FUNC4(hr == S_OK, "got %#x\n", hr);
    FUNC4(type == XmlNodeType_Element, "Unexpected type %d\n", type);

    FUNC6(reader, FALSE);

    type = XmlNodeType_Element;
    hr = FUNC1(reader, &type);
    FUNC4(hr == WC_E_SYNTAX, "got %#x\n", hr);
    FUNC4(type == XmlNodeType_None, "Unexpected type %d\n", type);

    FUNC6(reader, FALSE);

    hr = FUNC3(reader, NULL);
    FUNC4(hr == S_OK, "got %08x\n", hr);

    FUNC2(reader);
}
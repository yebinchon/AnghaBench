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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  IXmlWriter ;
typedef  int /*<<< orphan*/  IStream ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IXmlWriter ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  XmlStandalone_Omit ; 
 int /*<<< orphan*/  XmlWriterProperty_Indent ; 
 int /*<<< orphan*/  XmlWriterProperty_OmitXmlDeclaration ; 
 int /*<<< orphan*/  FUNC11 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(void)
{
    static const WCHAR commentW[] = {'c','o','m','m','e','n','t',0};
    static const WCHAR aW[] = {'a',0};
    static const WCHAR bW[] = {'b',0};
    IXmlWriter *writer;
    IStream *stream;
    HRESULT hr;

    hr = FUNC1(&IID_IXmlWriter, (void**)&writer, NULL);
    FUNC11(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    stream = FUNC12(writer);

    FUNC13(writer, XmlWriterProperty_OmitXmlDeclaration);
    FUNC13(writer, XmlWriterProperty_Indent);

    hr = FUNC9(writer, XmlStandalone_Omit);
    FUNC11(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC10(writer, NULL, aW, NULL);
    FUNC11(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC5(writer, commentW);
    FUNC11(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC10(writer, NULL, bW, NULL);
    FUNC11(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC7(writer);
    FUNC11(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC3(writer);
    FUNC11(hr == S_OK, "got 0x%08x\n", hr);

    FUNC0(stream,
        "<a>\r\n"
        "  <!--comment-->\r\n"
        "  <b />\r\n"
        "</a>");

    FUNC2(stream);

    /* WriteElementString */
    stream = FUNC12(writer);

    hr = FUNC10(writer, NULL, aW, NULL);
    FUNC11(hr == S_OK, "Unexpected hr %#x.\n", hr);

    hr = FUNC6(writer, NULL, bW, NULL, NULL);
    FUNC11(hr == S_OK, "Unexpected hr %#x.\n", hr);

    hr = FUNC6(writer, NULL, bW, NULL, NULL);
    FUNC11(hr == S_OK, "Unexpected hr %#x.\n", hr);

    hr = FUNC8(writer);
    FUNC11(hr == S_OK, "Unexpected hr %#x.\n", hr);

    hr = FUNC3(writer);
    FUNC11(hr == S_OK, "Unexpected hr %#x.\n", hr);

    FUNC0(stream,
        "<a>\r\n"
        "  <b />\r\n"
        "  <b />\r\n"
        "</a>");

    FUNC2(stream);

    FUNC4(writer);
}
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
 scalar_t__ E_UNEXPECTED ; 
 int /*<<< orphan*/  IID_IXmlWriter ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  XmlStandalone_Omit ; 
 int /*<<< orphan*/  XmlWriterProperty_OmitXmlDeclaration ; 
 int /*<<< orphan*/  FUNC8 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(void)
{
    static const WCHAR closeW[] = {'-','-','>',0};
    static const WCHAR aW[] = {'a',0};
    static const WCHAR bW[] = {'b',0};
    IXmlWriter *writer;
    IStream *stream;
    HRESULT hr;

    hr = FUNC1(&IID_IXmlWriter, (void**)&writer, NULL);
    FUNC8(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    FUNC10(writer, XmlWriterProperty_OmitXmlDeclaration);

    hr = FUNC5(writer, aW);
    FUNC8(hr == E_UNEXPECTED, "got 0x%08x\n", hr);

    stream = FUNC9(writer);

    hr = FUNC6(writer, XmlStandalone_Omit);
    FUNC8(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC5(writer, aW);
    FUNC8(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC7(writer, NULL, bW, NULL);
    FUNC8(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC5(writer, aW);
    FUNC8(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC5(writer, NULL);
    FUNC8(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC5(writer, closeW);
    FUNC8(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC3(writer);
    FUNC8(hr == S_OK, "got 0x%08x\n", hr);

    FUNC0(stream, "<!--a--><b><!--a--><!----><!--- ->-->");

    FUNC4(writer);
    FUNC2(stream);
}
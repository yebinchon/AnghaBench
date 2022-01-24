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
typedef  char* HRESULT ;
typedef  int /*<<< orphan*/  HGLOBAL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IXmlWriter ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *,char const*,char const*) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* S_OK ; 
 char* WR_E_INVALIDACTION ; 
 int /*<<< orphan*/  XmlStandalone_Yes ; 
 int /*<<< orphan*/  XmlWriterProperty_OmitXmlDeclaration ; 
 int /*<<< orphan*/  FUNC10 (int,char*,char*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(void)
{
    static const char prologversion[] = "<?xml version=\"1.0\"?>";
    static const WCHAR versionW[] = {'v','e','r','s','i','o','n','=','"','1','.','0','"',0};
    static const WCHAR xmlW[] = {'x','m','l',0};
    IXmlWriter *writer;
    HGLOBAL hglobal;
    IStream *stream;
    HRESULT hr;
    char *ptr;

    hr = FUNC1(&IID_IXmlWriter, (void**)&writer, NULL);
    FUNC10(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    stream = FUNC11(writer);

    FUNC12(writer, XmlWriterProperty_OmitXmlDeclaration);

    hr = FUNC9(writer, XmlStandalone_Yes);
    FUNC10(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC6(writer);
    FUNC10(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC2(stream, &hglobal);
    FUNC10(hr == S_OK, "got 0x%08x\n", hr);

    ptr = FUNC3(hglobal);
    FUNC10(!ptr, "got %p\n", ptr);
    FUNC4(hglobal);

    /* one more time */
    hr = FUNC9(writer, XmlStandalone_Yes);
    FUNC10(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    FUNC5(stream);

    /* now add PI manually, and try to start a document */
    stream = FUNC11(writer);

    hr = FUNC8(writer, xmlW, versionW);
    FUNC10(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC6(writer);
    FUNC10(hr == S_OK, "got 0x%08x\n", hr);

    FUNC0(stream, prologversion);

    hr = FUNC9(writer, XmlStandalone_Yes);
    FUNC10(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC6(writer);
    FUNC10(hr == S_OK, "got 0x%08x\n", hr);

    FUNC0(stream, prologversion);

    hr = FUNC9(writer, XmlStandalone_Yes);
    FUNC10(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    hr = FUNC6(writer);
    FUNC10(hr == S_OK, "got 0x%08x\n", hr);

    FUNC0(stream, prologversion);

    /* another attempt to add 'xml' PI */
    hr = FUNC8(writer, xmlW, versionW);
    FUNC10(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    hr = FUNC6(writer);
    FUNC10(hr == S_OK, "got 0x%08x\n", hr);

    FUNC5(stream);
    FUNC7(writer);
}
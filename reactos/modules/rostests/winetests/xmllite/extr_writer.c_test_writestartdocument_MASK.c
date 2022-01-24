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
typedef  int /*<<< orphan*/  IXmlWriterOutput ;
typedef  int /*<<< orphan*/  IXmlWriter ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IStream ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ **) ; 
 scalar_t__ E_UNEXPECTED ; 
 int /*<<< orphan*/  IID_IXmlWriter ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char const*,char const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ WR_E_INVALIDACTION ; 
 int /*<<< orphan*/  XmlStandalone_Omit ; 
 int /*<<< orphan*/  XmlStandalone_Yes ; 
 int /*<<< orphan*/  FUNC11 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(void)
{
    static const char fullprolog[] = "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>";
    static const char *prologversion2 = "<?xml version=\"1.0\" encoding=\"uS-asCii\"?>";
    static const char prologversion[] = "<?xml version=\"1.0\"?>";
    static const WCHAR versionW[] = {'v','e','r','s','i','o','n','=','"','1','.','0','"',0};
    static const WCHAR usasciiW[] = {'u','S','-','a','s','C','i','i',0};
    static const WCHAR xmlW[] = {'x','m','l',0};
    IXmlWriterOutput *output;
    IXmlWriter *writer;
    IStream *stream;
    HRESULT hr;

    hr = FUNC2(&IID_IXmlWriter, (void**)&writer, NULL);
    FUNC11(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    /* output not set */
    hr = FUNC10(writer, XmlStandalone_Yes);
    FUNC11(hr == E_UNEXPECTED, "got 0x%08x\n", hr);

    hr = FUNC9(writer, xmlW, versionW);
    FUNC11(hr == E_UNEXPECTED, "got 0x%08x\n", hr);

    hr = FUNC6(writer);
    FUNC11(hr == S_OK, "got 0x%08x\n", hr);

    stream = FUNC12(writer);

    /* nothing written yet */
    hr = FUNC6(writer);
    FUNC11(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC10(writer, XmlStandalone_Yes);
    FUNC11(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC6(writer);
    FUNC11(hr == S_OK, "got 0x%08x\n", hr);

    FUNC0(stream, fullprolog);

    /* one more time */
    hr = FUNC10(writer, XmlStandalone_Yes);
    FUNC11(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);
    FUNC4(stream);

    /* now add PI manually, and try to start a document */
    stream = FUNC12(writer);

    hr = FUNC9(writer, xmlW, versionW);
    FUNC11(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC10(writer, XmlStandalone_Yes);
    FUNC11(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC10(writer, XmlStandalone_Yes);
    FUNC11(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    /* another attempt to add 'xml' PI */
    hr = FUNC9(writer, xmlW, versionW);
    FUNC11(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    hr = FUNC6(writer);
    FUNC11(hr == S_OK, "got 0x%08x\n", hr);

    FUNC0(stream, prologversion);

    FUNC4(stream);
    FUNC7(writer);

    /* create with us-ascii */
    hr = FUNC1(NULL, TRUE, &stream);
    FUNC11(hr == S_OK, "got 0x%08x\n", hr);

    output = NULL;
    hr = FUNC3((IUnknown *)stream, NULL, usasciiW, &output);
    FUNC11(hr == S_OK, "got %08x\n", hr);

    hr = FUNC2(&IID_IXmlWriter, (void **)&writer, NULL);
    FUNC11(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    hr = FUNC8(writer, output);
    FUNC11(hr == S_OK, "got %08x\n", hr);

    hr = FUNC10(writer, XmlStandalone_Omit);
    FUNC11(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC6(writer);
    FUNC11(hr == S_OK, "got 0x%08x\n", hr);

    FUNC0(stream, prologversion2);

    FUNC4(stream);
    FUNC7(writer);
    FUNC5(output);
}
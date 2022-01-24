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
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HGLOBAL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IXmlWriter ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  XmlStandalone_Yes ; 
 int /*<<< orphan*/  XmlWriterProperty_Indent ; 
 int /*<<< orphan*/  XmlWriterProperty_OmitXmlDeclaration ; 
 int /*<<< orphan*/  aW ; 
 int /*<<< orphan*/  FUNC15 (int,char*,unsigned char,...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(void)
{
    static const WCHAR versionW[] = {'v','e','r','s','i','o','n','=','"','1','.','0','"',0};
    static const WCHAR utf16W[] = {'u','t','f','-','1','6',0};
    static const WCHAR xmlW[] = {'x','m','l',0};
    IXmlWriterOutput *output;
    unsigned char *ptr;
    IXmlWriter *writer;
    IStream *stream;
    HGLOBAL hglobal;
    HRESULT hr;

    hr = FUNC0(NULL, TRUE, &stream);
    FUNC15(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC2((IUnknown*)stream, NULL, utf16W, &output);
    FUNC15(hr == S_OK, "got %08x\n", hr);

    hr = FUNC1(&IID_IXmlWriter, (void**)&writer, NULL);
    FUNC15(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    FUNC16(writer, XmlWriterProperty_OmitXmlDeclaration);

    hr = FUNC10(writer, output);
    FUNC15(hr == S_OK, "got 0x%08x\n", hr);

    /* BOM is on by default */
    hr = FUNC13(writer, XmlStandalone_Yes);
    FUNC15(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC8(writer);
    FUNC15(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC3(stream, &hglobal);
    FUNC15(hr == S_OK, "got 0x%08x\n", hr);

    ptr = FUNC4(hglobal);
    FUNC15(ptr[0] == 0xff && ptr[1] == 0xfe, "got %x,%x\n", ptr[0], ptr[1]);
    FUNC5(hglobal);

    FUNC6(stream);
    FUNC7(output);

    /* start with PI */
    hr = FUNC0(NULL, TRUE, &stream);
    FUNC15(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC2((IUnknown*)stream, NULL, utf16W, &output);
    FUNC15(hr == S_OK, "got %08x\n", hr);

    hr = FUNC10(writer, output);
    FUNC15(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC12(writer, xmlW, versionW);
    FUNC15(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC8(writer);
    FUNC15(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC3(stream, &hglobal);
    FUNC15(hr == S_OK, "got 0x%08x\n", hr);

    ptr = FUNC4(hglobal);
    FUNC15(ptr[0] == 0xff && ptr[1] == 0xfe, "got %x,%x\n", ptr[0], ptr[1]);
    FUNC5(hglobal);

    FUNC7(output);
    FUNC6(stream);

    /* start with element */
    hr = FUNC0(NULL, TRUE, &stream);
    FUNC15(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC2((IUnknown*)stream, NULL, utf16W, &output);
    FUNC15(hr == S_OK, "got %08x\n", hr);

    hr = FUNC10(writer, output);
    FUNC15(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC14(writer, NULL, aW, NULL);
    FUNC15(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC8(writer);
    FUNC15(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC3(stream, &hglobal);
    FUNC15(hr == S_OK, "got 0x%08x\n", hr);

    ptr = FUNC4(hglobal);
    FUNC15(ptr[0] == 0xff && ptr[1] == 0xfe, "got %x,%x\n", ptr[0], ptr[1]);
    FUNC5(hglobal);

    FUNC7(output);
    FUNC6(stream);

    /* WriteElementString */
    hr = FUNC0(NULL, TRUE, &stream);
    FUNC15(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC2((IUnknown*)stream, NULL, utf16W, &output);
    FUNC15(hr == S_OK, "got %08x\n", hr);

    hr = FUNC10(writer, output);
    FUNC15(hr == S_OK, "got 0x%08x\n", hr);

    FUNC16(writer, XmlWriterProperty_Indent);

    hr = FUNC11(writer, NULL, aW, NULL, NULL);
    FUNC15(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC8(writer);
    FUNC15(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC3(stream, &hglobal);
    FUNC15(hr == S_OK, "got 0x%08x\n", hr);

    ptr = FUNC4(hglobal);
    FUNC15(ptr[0] == 0xff && ptr[1] == 0xfe && ptr[2] == '<', "Unexpected output: %#x,%#x,%#x\n",
            ptr[0], ptr[1], ptr[2]);
    FUNC5(hglobal);

    FUNC7(output);
    FUNC6(stream);

    FUNC9(writer);
}
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
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IStream ;
typedef  char* HRESULT ;
typedef  int /*<<< orphan*/  HGLOBAL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *) ; 
 char* E_UNEXPECTED ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IXmlWriter ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 char* S_OK ; 
 char* WR_E_INVALIDACTION ; 
 int /*<<< orphan*/  XmlStandalone_Omit ; 
 int /*<<< orphan*/  FUNC11 (int,char*,char*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(void)
{
    static const WCHAR aW[] = {'a',0};
    static const WCHAR bW[] = {'b',0};
    IXmlWriter *writer;
    IStream *stream;
    HGLOBAL hglobal;
    HRESULT hr;
    char *ptr;

    hr = FUNC1(&IID_IXmlWriter, (void**)&writer, NULL);
    FUNC11(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    hr = FUNC8(writer);
    FUNC11(hr == E_UNEXPECTED, "got 0x%08x\n", hr);

    stream = FUNC12(writer);

    /* WriteEndDocument resets it to initial state */
    hr = FUNC8(writer);
    FUNC11(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    hr = FUNC8(writer);
    FUNC11(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    hr = FUNC9(writer, XmlStandalone_Omit);
    FUNC11(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    hr = FUNC10(writer, NULL, aW, NULL);
    FUNC11(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    hr = FUNC7(writer, (IUnknown*)stream);
    FUNC11(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC10(writer, NULL, aW, NULL);
    FUNC11(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC10(writer, NULL, bW, NULL);
    FUNC11(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC8(writer);
    FUNC11(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC2(stream, &hglobal);
    FUNC11(hr == S_OK, "got 0x%08x\n", hr);

    ptr = FUNC3(hglobal);
    FUNC11(ptr == NULL, "got %p\n", ptr);

    /* we still need to flush manually, WriteEndDocument doesn't do that */
    hr = FUNC5(writer);
    FUNC11(hr == S_OK, "got 0x%08x\n", hr);

    FUNC0(stream, "<a><b /></a>");

    FUNC6(writer);
    FUNC4(stream);
}
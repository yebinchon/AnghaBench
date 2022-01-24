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
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 scalar_t__ WR_E_INVALIDACTION ; 
 int /*<<< orphan*/  XmlStandalone_Yes ; 
 int /*<<< orphan*/  FUNC10 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(void)
{
    static const WCHAR rawW[] = {'a','<',':',0};
    static const WCHAR aW[] = {'a',0};
    IXmlWriter *writer;
    IStream *stream;
    HRESULT hr;

    hr = FUNC1(&IID_IXmlWriter, (void**)&writer, NULL);
    FUNC10(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    hr = FUNC8(writer, NULL);
    FUNC10(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC8(writer, rawW);
    FUNC10(hr == E_UNEXPECTED, "got 0x%08x\n", hr);

    stream = FUNC11(writer);

    hr = FUNC8(writer, NULL);
    FUNC10(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC8(writer, rawW);
    FUNC10(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC8(writer, rawW);
    FUNC10(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC5(writer, rawW);
    FUNC10(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC8(writer, rawW);
    FUNC10(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC6(writer, NULL, aW, NULL, aW);
    FUNC10(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC9(writer, XmlStandalone_Yes);
    FUNC10(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    hr = FUNC5(writer, rawW);
    FUNC10(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    hr = FUNC7(writer);
    FUNC10(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    hr = FUNC8(writer, rawW);
    FUNC10(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    hr = FUNC3(writer);
    FUNC10(hr == S_OK, "got 0x%08x\n", hr);

    FUNC0(stream, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>a<:a<:<!--a<:-->a<:<a>a</a>");

    FUNC4(writer);
    FUNC2(stream);
}
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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *) ; 
 scalar_t__ E_UNEXPECTED ; 
 int /*<<< orphan*/  IID_IXmlWriter ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ S_OK ; 
 scalar_t__ WR_E_INVALIDACTION ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(void)
{
    static const WCHAR aW[] = {'a',0};
    IXmlWriter *writer;
    IStream *stream;
    HRESULT hr;

    hr = FUNC0(&IID_IXmlWriter, (void**)&writer, NULL);
    FUNC12(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    /* initial state */
    FUNC11(writer, E_UNEXPECTED);

    /* set output and call 'wrong' method, WriteEndElement */
    stream = FUNC13(writer);

    hr = FUNC6(writer);
    FUNC12(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    FUNC11(writer, WR_E_INVALIDACTION);
    FUNC1(stream);

    /* WriteAttributeString */
    stream = FUNC13(writer);

    hr = FUNC3(writer, NULL, aW, NULL, aW);
    FUNC12(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    FUNC11(writer, WR_E_INVALIDACTION);
    FUNC1(stream);

    /* WriteEndDocument */
    stream = FUNC13(writer);

    hr = FUNC5(writer);
    FUNC12(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    FUNC11(writer, WR_E_INVALIDACTION);
    FUNC1(stream);

    /* WriteFullEndElement */
    stream = FUNC13(writer);

    hr = FUNC7(writer);
    FUNC12(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    FUNC11(writer, WR_E_INVALIDACTION);
    FUNC1(stream);

    /* WriteCData */
    stream = FUNC13(writer);

    hr = FUNC4(writer, aW);
    FUNC12(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    FUNC11(writer, WR_E_INVALIDACTION);
    FUNC1(stream);

    /* WriteName */
    stream = FUNC13(writer);

    hr = FUNC8(writer, aW);
    FUNC12(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    FUNC11(writer, WR_E_INVALIDACTION);
    FUNC1(stream);

    /* WriteNmToken */
    stream = FUNC13(writer);

    hr = FUNC9(writer, aW);
    FUNC12(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    FUNC11(writer, WR_E_INVALIDACTION);
    FUNC1(stream);

    /* WriteString */
    stream = FUNC13(writer);

    hr = FUNC10(writer, aW);
    FUNC12(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    FUNC11(writer, WR_E_INVALIDACTION);
    FUNC1(stream);

    FUNC2(writer);
}
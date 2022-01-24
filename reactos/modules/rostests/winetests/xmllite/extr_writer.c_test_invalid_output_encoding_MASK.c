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
typedef  int /*<<< orphan*/  IXmlWriter ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ MX_E_ENCODING ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  XmlStandalone_Yes ; 
 int /*<<< orphan*/  aW ; 
 int /*<<< orphan*/  FUNC21 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC22(IXmlWriter *writer, IUnknown *output)
{
    HRESULT hr;

    hr = FUNC1(writer, output);
    FUNC21(hr == S_OK, "Failed to set output, hr %#x.\n", hr);

    /* TODO: WriteAttributes */

    hr = FUNC2(writer, NULL, aW, NULL, aW);
    FUNC21(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);

    hr = FUNC3(writer, aW);
    FUNC21(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);

    hr = FUNC4(writer, 0x100);
    FUNC21(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);

    hr = FUNC5(writer, aW, 1);
    FUNC21(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);

    hr = FUNC6(writer, aW);
    FUNC21(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);

    /* TODO: WriteDocType */

    hr = FUNC7(writer, NULL, aW, NULL, NULL);
    FUNC21(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);

    hr = FUNC8(writer);
    FUNC21(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);

    hr = FUNC9(writer);
    FUNC21(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);

    hr = FUNC10(writer, aW);
    FUNC21(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);

    hr = FUNC11(writer);
    FUNC21(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);

    hr = FUNC12(writer, aW);
    FUNC21(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);

    hr = FUNC13(writer, aW);
    FUNC21(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);

    /* TODO: WriteNode */
    /* TODO: WriteNodeShallow */

    hr = FUNC14(writer, aW, aW);
    FUNC21(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);

    hr = FUNC15(writer, aW, NULL);
    FUNC21(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);

    hr = FUNC16(writer, aW);
    FUNC21(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);

    hr = FUNC17(writer, aW, 1);
    FUNC21(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);

    hr = FUNC18(writer, XmlStandalone_Yes);
    FUNC21(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);

    hr = FUNC19(writer, NULL, aW, NULL);
    FUNC21(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);

    hr = FUNC20(writer, aW);
    FUNC21(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);

    /* TODO: WriteSurrogateCharEntity */
    /* ًُُTODO: WriteWhitespace */

    hr = FUNC0(writer);
    FUNC21(hr == S_OK, "Failed to flush, hr %#x.\n", hr);
}
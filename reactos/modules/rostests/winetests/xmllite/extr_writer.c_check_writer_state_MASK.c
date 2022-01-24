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
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,char const*,char const*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,char const*,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  XmlStandalone_Omit ; 
 int /*<<< orphan*/  FUNC19 (int,char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC20(IXmlWriter *writer, HRESULT exp_hr)
{
    static const WCHAR aW[] = {'a',0};
    HRESULT hr;

    /* FIXME: add WriteAttributes */

    hr = FUNC0(writer, NULL, aW, NULL, aW);
    FUNC19(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);

    hr = FUNC1(writer, aW);
    FUNC19(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);

    hr = FUNC2(writer, aW[0]);
    FUNC19(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);

    hr = FUNC3(writer, aW, 1);
    FUNC19(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);

    hr = FUNC4(writer, aW);
    FUNC19(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);

    /* FIXME: add WriteDocType */

    hr = FUNC5(writer, NULL, aW, NULL, aW);
    FUNC19(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);

    hr = FUNC6(writer);
    FUNC19(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);

    hr = FUNC7(writer);
    FUNC19(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);

    hr = FUNC8(writer, aW);
    FUNC19(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);

    hr = FUNC9(writer);
    FUNC19(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);

    hr = FUNC10(writer, aW);
    FUNC19(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);

    hr = FUNC11(writer, aW);
    FUNC19(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);

    /* FIXME: add WriteNode */
    /* FIXME: add WriteNodeShallow */

    hr = FUNC12(writer, aW, aW);
    FUNC19(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);

    hr = FUNC13(writer, aW, NULL);
    FUNC19(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);

    hr = FUNC14(writer, aW);
    FUNC19(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);

    hr = FUNC15(writer, aW, 1);
    FUNC19(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);

    hr = FUNC16(writer, XmlStandalone_Omit);
    FUNC19(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);

    hr = FUNC17(writer, NULL, aW, NULL);
    FUNC19(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);

    hr = FUNC18(writer, aW);
    FUNC19(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);

    /* FIXME: add WriteSurrogateCharEntity */
    /* FIXME: add WriteWhitespace */
}
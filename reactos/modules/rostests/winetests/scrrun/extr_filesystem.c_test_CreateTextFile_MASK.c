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
typedef  scalar_t__ WCHAR ;
typedef  int /*<<< orphan*/  ITextStream ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__* BSTR ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  CLSID_TextStream ; 
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  CTL_E_BADFILEMODE ; 
 int /*<<< orphan*/  CTL_E_FILEALREADYEXISTS ; 
 int /*<<< orphan*/  CTL_E_PATHNOTFOUND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  E_VAR_NOT_SET ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  ForReading ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,scalar_t__**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__*) ; 
 int /*<<< orphan*/  S_FALSE ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__* FUNC14 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__*) ; 
 int /*<<< orphan*/  TristateFalse ; 
 int /*<<< orphan*/  VARIANT_FALSE ; 
 int /*<<< orphan*/  VARIANT_TRUE ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  fs3 ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC19 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  testfileW ; 
 int /*<<< orphan*/  utf16bom ; 
 int FUNC21 (scalar_t__*) ; 

__attribute__((used)) static void FUNC22(void)
{
    WCHAR pathW[MAX_PATH], dirW[MAX_PATH], buffW[10];
    ITextStream *stream;
    BSTR nameW, str;
    HANDLE file;
    HRESULT hr;
    BOOL ret;

    FUNC17(testfileW, pathW, dirW);

    /* dir doesn't exist */
    nameW = FUNC14(pathW);
    hr = FUNC6(fs3, nameW, VARIANT_FALSE, VARIANT_FALSE, &stream);
    FUNC19(hr == CTL_E_PATHNOTFOUND, "got 0x%08x\n", hr);

    ret = FUNC2(dirW, NULL);
    FUNC19(ret, "got %d, %d\n", ret, FUNC5());

    hr = FUNC6(fs3, nameW, VARIANT_FALSE, VARIANT_FALSE, &stream);
    FUNC19(hr == S_OK, "got 0x%08x\n", hr);

    FUNC20(stream, &CLSID_TextStream);

    hr = FUNC9(stream, 1, &str);
    FUNC19(hr == CTL_E_BADFILEMODE, "got 0x%08x\n", hr);

    hr = FUNC8(stream);
    FUNC19(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC9(stream, 1, &str);
    FUNC19(hr == CTL_E_BADFILEMODE || hr == E_VAR_NOT_SET, "got 0x%08x\n", hr);

    hr = FUNC8(stream);
    FUNC19(hr == S_FALSE || hr == E_VAR_NOT_SET, "got 0x%08x\n", hr);

    FUNC11(stream);

    /* check it's created */
    file = FUNC3(pathW, GENERIC_READ, 0, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
    FUNC19(file != INVALID_HANDLE_VALUE, "got %p\n", file);
    FUNC1(file);

    /* try to create again with no-overwrite mode */
    hr = FUNC6(fs3, nameW, VARIANT_FALSE, VARIANT_FALSE, &stream);
    FUNC19(hr == CTL_E_FILEALREADYEXISTS, "got 0x%08x\n", hr);

    /* now overwrite */
    hr = FUNC6(fs3, nameW, VARIANT_TRUE, VARIANT_FALSE, &stream);
    FUNC19(hr == S_OK, "got 0x%08x\n", hr);
    FUNC11(stream);

    /* overwrite in Unicode mode, check for BOM */
    hr = FUNC6(fs3, nameW, VARIANT_TRUE, VARIANT_TRUE, &stream);
    FUNC19(hr == S_OK, "got 0x%08x\n", hr);
    FUNC11(stream);

    /* File was created in Unicode mode, it contains 0xfffe BOM. Opening it in non-Unicode mode
       treats BOM like a valuable data with appropriate CP_ACP -> WCHAR conversion. */
    buffW[0] = 0;
    FUNC12(CP_ACP, 0, utf16bom, -1, buffW, FUNC0(buffW));

    hr = FUNC7(fs3, nameW, ForReading, VARIANT_FALSE, TristateFalse, &stream);
    FUNC19(hr == S_OK, "got 0x%08x\n", hr);
    hr = FUNC10(stream, &str);
    FUNC19(hr == S_FALSE || FUNC16(hr == S_OK) /* win2k */, "got 0x%08x\n", hr);
    FUNC19(!FUNC18(str, buffW), "got %s, expected %s\n", FUNC21(str), FUNC21(buffW));
    FUNC15(str);
    FUNC11(stream);

    FUNC4(nameW);
    FUNC13(dirW);
    FUNC15(nameW);
}
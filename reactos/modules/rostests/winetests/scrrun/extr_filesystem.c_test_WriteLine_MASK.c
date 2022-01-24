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
typedef  int /*<<< orphan*/  buffW ;
typedef  int /*<<< orphan*/  buffA ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  ITextStream ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ HANDLE ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  BSTR ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 size_t FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int FUNC10 (scalar_t__,char*,int,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VARIANT_FALSE ; 
 int /*<<< orphan*/  VARIANT_TRUE ; 
 int /*<<< orphan*/  crlfW ; 
 int /*<<< orphan*/  fs3 ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int,char*,int,...) ; 
 int /*<<< orphan*/  testfileW ; 
 int FUNC19 (char*) ; 

__attribute__((used)) static void FUNC20(void)
{
    WCHAR pathW[MAX_PATH], dirW[MAX_PATH];
    WCHAR buffW[MAX_PATH], buff2W[MAX_PATH];
    char buffA[MAX_PATH];
    ITextStream *stream;
    DWORD r, len;
    HANDLE file;
    BSTR nameW;
    HRESULT hr;
    BOOL ret;

    FUNC14(testfileW, pathW, dirW);

    ret = FUNC2(dirW, NULL);
    FUNC18(ret, "got %d, %d\n", ret, FUNC5());

    /* create as ASCII file first */
    nameW = FUNC12(pathW);
    hr = FUNC6(fs3, nameW, VARIANT_FALSE, VARIANT_FALSE, &stream);
    FUNC18(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC8(stream, nameW);
    FUNC18(hr == S_OK, "got 0x%08x\n", hr);
    FUNC7(stream);

    /* check contents */
    file = FUNC3(pathW, GENERIC_READ, 0, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
    FUNC18(file != INVALID_HANDLE_VALUE, "got %p\n", file);
    r = 0;
    ret = FUNC10(file, buffA, sizeof(buffA), &r, NULL);
    FUNC18(ret && r, "read %d, got %d, %d\n", r, ret, FUNC5());

    len = FUNC9(CP_ACP, 0, buffA, r, buffW, FUNC0(buffW));
    buffW[len] = 0;
    FUNC17(buff2W, nameW);
    FUNC15(buff2W, crlfW);
    FUNC18(!FUNC16(buff2W, buffW), "got %s, expected %s\n", FUNC19(buffW), FUNC19(buff2W));
    FUNC1(file);
    FUNC4(nameW);

    /* same for unicode file */
    hr = FUNC6(fs3, nameW, VARIANT_FALSE, VARIANT_TRUE, &stream);
    FUNC18(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC8(stream, nameW);
    FUNC18(hr == S_OK, "got 0x%08x\n", hr);
    FUNC7(stream);

    /* check contents */
    file = FUNC3(pathW, GENERIC_READ, 0, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
    FUNC18(file != INVALID_HANDLE_VALUE, "got %p\n", file);
    r = 0;
    ret = FUNC10(file, buffW, sizeof(buffW), &r, NULL);
    FUNC18(ret && r, "read %d, got %d, %d\n", r, ret, FUNC5());
    buffW[r/sizeof(WCHAR)] = 0;

    buff2W[0] = 0xfeff;
    buff2W[1] = 0;
    FUNC15(buff2W, nameW);
    FUNC15(buff2W, crlfW);
    FUNC18(!FUNC16(buff2W, buffW), "got %s, expected %s\n", FUNC19(buffW), FUNC19(buff2W));
    FUNC1(file);
    FUNC4(nameW);

    FUNC11(dirW);
    FUNC13(nameW);
}